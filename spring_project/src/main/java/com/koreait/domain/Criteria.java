package com.koreait.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class Criteria {
	int pageNum;
	int amount;
	
	String type;
	String keyword;
	
	public Criteria() {
		this(1,10);
	}
	public String [] getTypeArr() {
		//type이 null이면 빈 배열 생성, notnull이면 공백 기준으로 나누기
		return type==null? new String[] {} : type.split("");
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum",this.pageNum)
				.queryParam("amount", this.amount)
				.queryParam("type",this.type)
				.queryParam("keyword", this.keyword);
		return builder.toUriString();
	}
	
}
