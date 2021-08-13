package com.koreait.domain;

import lombok.Data;

@Data
public class BestSellerDTO {
	long bestNo; 
    String bestTitle; 
    String bestAuthor; 
    String bestCompany;
    String bestImage; 
    String bestDetail; 
}
