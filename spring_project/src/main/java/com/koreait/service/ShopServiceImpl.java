package com.koreait.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.domain.ShopDTO;
import com.koreait.mapper.ShopMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service@Log4j
public class ShopServiceImpl implements ShopService{
	
	@Setter(onMethod_=@Autowired)
	ShopMapper shopMapper;
	
	private static String libList = "https://www.anseong.go.kr/library/search/newSearch.do?mId=0101050000";

	@PostConstruct
	public List<ShopDTO> getNewList() throws IOException {
		List<ShopDTO> newList=new ArrayList<ShopDTO>();
		
        Document doc;
			doc = Jsoup.connect(libList).get();//url요청
			Elements contents = doc.select("table tbody tr");//신간리스트 테이블
			
//        log.info("요소선택자 결과 : "+contents);	
//        log.info("신간리스트 테이블 내용 크기 : "+contents.size());
			
			for(Element content : contents){
				Elements liContents = content.select("li");
				Elements imgContents = content.select("img");
				Elements aContents = content.select("a");
				
				ShopDTO shop = ShopDTO.builder()
						.imgURL(imgContents.get(0).attr("src"))
						.prodTitle(aContents.get(0).text())
						.author(liContents.get(0).text())
						.company(liContents.get(2).text())
						.build();
				
//        		log.info("결과 : "+shop.toString());
				
				newList.add(shop);
				shopMapper.insertProd(newList);
			}
		return shopMapper.newList();
  }

	@Override
	public ShopDTO prodDesc(Long pno) {
		return shopMapper.prodDesc(pno);	
	}
}
