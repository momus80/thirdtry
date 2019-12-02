package com.sp.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private String w_id;
	private Date regdate;
	private Date updatedate;
}
