package com.koreait.domain;

import lombok.Data;

@Data
public class CartDTO {
	private long cno;
	private String userId;
	private String prodTitle;
	private String imgURL;
	private long pno;
	
}
