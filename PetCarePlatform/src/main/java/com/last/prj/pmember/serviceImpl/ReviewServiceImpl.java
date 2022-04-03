package com.last.prj.pmember.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.last.prj.pmember.service.ReviewMapper;
import com.last.prj.pmember.service.ReviewService;
import com.last.prj.pmember.service.ReviewVO;

@Repository("reviewDao")
public class ReviewServiceImpl implements ReviewService {

	
	@Autowired
	private ReviewMapper map;
	
	@Override
	public List<ReviewVO> admReviewList() {
		return map.admReviewList();
	}

	@Override
	public int servicereview(ReviewVO review) {
		return map.servicereview(review);
	}

	@Override
	public ReviewVO reviewSearch(ReviewVO r_no) {
		return map.reviewSearch(r_no);
	}

	@Override
	public int counselreview(ReviewVO review) {
		return map.counselreview(review);
	}

	@Override
	public ReviewVO cnoreview(int c_no) {
		return map.cnoreview(c_no);
	}

}
