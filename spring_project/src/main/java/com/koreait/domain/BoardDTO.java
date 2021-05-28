package com.koreait.domain;

import lombok.Data;

@Data
public class BoardDTO {
	private long bno;
	private String title;
	private String content;
	private String writer;
	private String regdate;
	private int views;
}
