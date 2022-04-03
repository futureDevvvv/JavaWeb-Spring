package com.last.prj.service.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.last.prj.pmember.service.Criteria;

public interface ServiceMapper {

	public List<ServiceVO> myPetServiceList(String m_id); // 일반회원 결제내역 조회
	
	public List<ServiceVO> pMembenefit(Criteria cri); //파트너회원 내 수익 조회
	public int pMembenefitTotal(Criteria cri);
	
	public int ServiceUpdate(int r_no);//진료작성 후 서비스종료일 입력
	
	public int ServiceInsert(ServiceVO vo); //예약할때 같이 서비스 등록
	
	public ServiceVO totalPrice(String p_id); //총 수익 출력
	
	public ServiceVO serviceSelect(int r_no); //파트너회원 서비스 조회
	
	public List<ServiceVO> petProtoColSearch(@Param("key") String key, @Param("data") String data, @Param("m_id")String m_id);
	
	public List<ServiceVO> petService(ServiceVO vo);
	public int petServiceCnt(ServiceVO vo);
}
