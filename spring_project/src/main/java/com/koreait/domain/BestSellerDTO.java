package com.koreait.domain;

import lombok.Data;

@Data
public class BestSellerDTO {
	private long bestNo; 
    private String prodTitle; 
    private String author; 
    private String company;
    private String imgURL; 
    private String bestDetail; 
}
