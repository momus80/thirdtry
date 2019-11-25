package org.zerock.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVO {
	private long bno;
	private String title;
	private String content;
	private String w_id;
	private Timestamp regdate;
	private Timestamp updatedate;
}
