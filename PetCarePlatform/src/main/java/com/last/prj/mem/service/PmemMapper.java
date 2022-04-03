package com.last.prj.mem.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PmemMapper {
	
	PmemVO pmemberSelect(PmemVO pmember);
	

	String pmemberIdSearch(@Param("name") String name, @Param("tel") String tel);
	int pmemberInsert1(PmemVO pmember);

	//아이디로 멤버 정보 조회
	MemVO memberOne (MemVO member);
	
	int pmemberInsert2(PmemVO pmember);
	
	int pmemberInsert3(@Param("p_id") String p_id,@Param("p_license") int p_license,@Param("p_image") int p_image);
	
	boolean isIdCheck(String p_id);

	List<PriceVO> getPrice(String p_id);
	int deleteService(PriceVO price);//no삭제
	int deleteServiceId(PriceVO price);//id로삭제
	int insertService(PriceVO price);
	int updateService(PriceVO price);

	PmemVO read(String username);
	

	// 비밀번호 업데이트
	int pmemberPwdUpdate(PmemVO pmem);


	
	int pmemdelete();

}
