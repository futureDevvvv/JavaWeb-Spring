package com.last.prj.reserv.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.last.prj.reserv.service.ReservCountMapper;
import com.last.prj.reserv.service.ReservCountService;
import com.last.prj.reserv.service.ReservCountVO;
@Repository("reservCountDao")
public class ReservCountServiceImpl implements ReservCountService {
	
	@Autowired
	private ReservCountMapper map;
	
	@Override
	public List<ReservCountVO> reservCountList() {
		return map.reservCountList();
	}

	@Override
	public int reservCountInsert(ReservCountVO no) {
		return map.reservCountInsert(no);
	}

	@Override
	public List<ReservCountVO> reservCountSelect(ReservCountVO vo) {
		return map.reservCountSelect(vo);
	}

	@Override
	public List<ReservCountVO> reservDelCheck(ReservCountVO vo) {
		return map.reservDelCheck(vo);
	}

	@Override
	public int reservdateUpdate(ReservCountVO vo) {
		return map.reservdateUpdate(vo);
	}

	@Override
	public int countUpdate(ReservCountVO vo) {
		return map.countUpdate(vo);
	}

	@Override
	public int countDelete(ReservCountVO vo) {
		return map.countDelete(vo);
	}


}
