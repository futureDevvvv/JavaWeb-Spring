package com.last.prj.qna.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.last.prj.qna.service.QnaMapper;
import com.last.prj.qna.service.QnaService;
import com.last.prj.qna.service.QnaTagVO;
import com.last.prj.qna.service.QnaVO;

@Repository("qnaDAO")
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaMapper map;

	
	@Override
	public List<QnaVO> qnaBest() {
		// TODO Auto-generated method stub
		return map.qnaBest();
	}


	@Override
	public QnaVO qnaDetail(int q_no) {
		// TODO Auto-generated method stub
		return map.qnaDetail(q_no);
	}

	@Override
	public List<QnaVO> ansDetail(int q_no) {
		// TODO Auto-generated method stub
		return map.ansDetail(q_no);
	}


	@Override
	public int postCnt(int q_no) {
		// TODO Auto-generated method stub
		return map.postCnt(q_no);
	}


	@Override
	public int newQna(QnaVO qna) {
		// TODO Auto-generated method stub
		return map.newQna(qna);
	}

	@Override
	public int newAns(QnaVO qna) {
		// TODO Auto-generated method stub
		return map.newAns(qna);
	}

	@Override
	public int replyCnt(int q_no) {
		// TODO Auto-generated method stub
		return map.replyCnt(q_no);
	}

	@Override
	public List<QnaTagVO> tagSearch(String t_name) {
		// TODO Auto-generated method stub
		return map.tagSearch(t_name);
	}

	@Override
	public int ansDelete(int q_no) {
		// TODO Auto-generated method stub
		return map.ansDelete(q_no);
	}

	@Override
	public int ansUpdate(QnaVO qna) {
		// TODO Auto-generated method stub
		return map.ansUpdate(qna);
	}

	@Override
	public List<QnaVO> admQnaList() {
		return map.admQnaList();
	}

	@Override
	public int qModify(QnaVO qna) {
		// TODO Auto-generated method stub
		return map.ansUpdate(qna);
	}

	@Override
	public int qDeleteOne(int q_no) {
		// TODO Auto-generated method stub
		return map.qDeleteOne(q_no);
	}

	@Override
	public int qDeleteTwo(int q_no) {
		// TODO Auto-generated method stub
		return map.qDeleteTwo(q_no);
	}

	@Override
	public List<QnaVO> qnaRecent() {
		// TODO Auto-generated method stub
		return map.qnaRecent();
	}

	@Override
	public int getTotal(com.last.prj.pmember.service.Criteria cri) {
		// TODO Auto-generated method stub
		return map.getTotal(cri);
	}

	@Override
	public List<QnaVO> qnaList(com.last.prj.pmember.service.Criteria cri) {
		// TODO Auto-generated method stub
		return map.qnaList(cri);
	}


}
