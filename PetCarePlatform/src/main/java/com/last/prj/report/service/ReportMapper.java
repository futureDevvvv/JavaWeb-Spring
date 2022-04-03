package com.last.prj.report.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.prj.pmember.service.Criteria;



public interface ReportMapper {

	// qna 신고 인서트
		int newQnaReport(ReportVO report);
	
	public List<ReportVO> reportList();
	
	//일반사용자 신고내역 조회
	public List<ReportVO> myReportList(Criteria cri);
	public int memReport(Criteria cri);//파트너마이페이지 신고내역
	
	
		//qna에 대한 신고리스트
		public List<ReportVO> admQnaList();
		//review에 대한 신고리스트
		public List<ReportVO> admReviewList();
		//유형 별 신고리스트
		public List<ReportVO> admReportPart(@RequestParam("code")int code);
		//처리 별 신고리스트
		public List<ReportVO> admReportRepor(@RequestParam("repor")int repor);
		//신고 모달 단건 조회 : QnA
		public List<ReportVO> admReportOneQna(int repno);
		//신고 모달 단건 조회 : Review
		public List<ReportVO> admReportOneReview(int rep_no);
		//신고 처리
		int admReportUpdate(@Param("rep_no")int rep_no, @Param("repor")int repor, @Param("state")String state);
		//신고 날짜 검색
		public List<ReportVO> admReportDate(@Param("fromDate")String fromDate, @Param("toDate")String toDate);
		
		//신고 리뷰 조회
		public int admRlistCodeCount(ReportVO vo);
		public List<ReportVO> admRlistCode(ReportVO vo);
		
		//신고 QnA 조회
		public int admQlistCodeCount(ReportVO vo);
		public List<ReportVO> admQlistCode(ReportVO vo);
		int adminReportedCount();
		int adminReportTotalCount();
		int adminReporCount();
		
		public int pmemReport(Criteria cri);//파트너마이페이지 신고내역
		public List<ReportVO> pmemReportList(Criteria cri);
		
		//리서치 업데이트를 위한
		public ReportVO admReSearch(int rep_no);
		//회원의 신고 카운트 업데이트
		public int admReSearchUpdate(ReportVO vo);
		//신고 제재 대상 회원 리스트 출력
		public List<ReportVO> adminReporList(ReportVO vo);
		//신고 제재 대상 회원 리스트 출력 건수 조회
		public int adminReporListCount(ReportVO vo);
		
		public List<ReportVO> adminReporOneList(ReportVO vo);
		public int adminReporOneListCount(ReportVO vo);
		
		public ReportVO adminDeletResearch(String id);
}
