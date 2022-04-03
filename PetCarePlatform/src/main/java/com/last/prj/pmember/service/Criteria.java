package com.last.prj.pmember.service;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; /* 현재 페이지 */
	private int amount; /* 한 페이지 당 보여질 게시물 갯수 */
	private int pageBlock;//페이지 버튼 수 
	

	private Integer code;//map 조건

	private String p_id;

	private String m_id; //예약페이징 조건

	private String w_address;	
	private String reporter; 	
	
	//qna 검색
	private String searchType;
	private String searchValue;
	
	public Criteria() {
		this(1, 12);
	
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
