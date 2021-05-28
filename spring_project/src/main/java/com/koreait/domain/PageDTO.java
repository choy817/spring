package com.koreait.domain;

import lombok.Getter;
import lombok.ToString;

@Getter@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private int realEnd;
	private boolean prev;
	private boolean next;
	
	int total;
	Criteria cri;
	
	public PageDTO(int total, Criteria cri) {
		this.total = total;
		this.cri = cri;
		
		this.endPage=(int)(Math.ceil(cri.getPageNum()/10.0)*10);
		this.startPage=this.endPage-9;
		this.realEnd=(int)(Math.ceil(total*1.0/cri.getAmount()));
		
		if(endPage>realEnd) {
			endPage=realEnd;
		}
		
		prev=startPage>1;
		next=endPage<realEnd;
	}
	
	
}
