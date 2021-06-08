package com.koreait.domain;

import lombok.Data;

@Data
public class ReplyDTO {
	private long rno;
    private long bno;
    private String reply;
    private String replyer;
    private String replydate;
    private String updatedate;
}
