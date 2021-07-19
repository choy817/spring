package com.koreait.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShopDTO {
	private long pno;			//도서 번호
	private String imgURL; 		//책 표지
	private String prodTitle;	//책 제목
	private String author;		//지은이
	private String company;		//출판사
	
	
}
