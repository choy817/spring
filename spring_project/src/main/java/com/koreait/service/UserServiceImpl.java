package com.koreait.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.koreait.domain.UserDTO;
import com.koreait.handler.MailHandler;
import com.koreait.handler.TempKey;
import com.koreait.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
//컨트롤러 -> 서비스 호출 -> DAO 호출 -> Mapper -> DB
@Service@Log4j
public class UserServiceImpl implements UserService{
	@Setter(onMethod_=@Autowired)
	UserMapper userMapper;
	@Setter(onMethod_=@Autowired)
	JavaMailSender mailSender;
	
	//회원가입 및 이메일인증
	@Override
	public boolean userJoin(UserDTO user) {
		//회원insert
		boolean joinResult=userMapper.userJoin(user);
		if(joinResult) {
			log.info("joinOk : Service 진입");
			//인증키 생성
			String key = new TempKey().getKey(50, false);
			//인증키 DB저장
			userMapper.joinOk(user.getUserEmail(), key);
			try {
				MailHandler sendMail = new MailHandler(mailSender);
				sendMail.setSubject("[이메일 인증]");
				sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
						.append("<a href='http://localhost:8090/user/joinOk?key=")
						.append(key)
						.append("\"&userEmail=")
						.append(user.getUserEmail())
						.append("' target='_blenk'>회원가입을 완료하시려면 이 링크를 클릭하세요</a>")
						.toString());
				sendMail.setFrom("cyjspringtest@gmail.com", "관리자");
				sendMail.setTo(user.getUserEmail());
				sendMail.send();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}else {
			log.info("회원정보 insert 실패");
		}
		return joinResult;
	}
	//유저정보 업데이트(이메일 인증 완료시)
	@Override
	public void userAuth(String userEmail) {
		log.info(userEmail);
		userMapper.userAuth(userEmail);
	}

	//로그인
	@Override
	public UserDTO login(UserDTO user) {
		return userMapper.selectUser(user);
	}
	//인증상태 확인
	@Override
	public int checkCert(UserDTO user) {
		return userMapper.checkCert(user);
	}
	//아이디 중복체크
	@Override
	public int checkId(String userId) {
		return userMapper.checkId(userId);
	}
	//회원정보 수정
	@Override
	public void userModify(UserDTO user) {
		//비밀번호가 변경되었을 경우
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		String enPw=encoder.encode(user.getUserPw());
		user.setUserPw(enPw);
		userMapper.userModify(user);
	}
	//회원 탈퇴
	@Override
	public int userDelete(UserDTO user) {
		return userMapper.userDelete(user);
	}
}

