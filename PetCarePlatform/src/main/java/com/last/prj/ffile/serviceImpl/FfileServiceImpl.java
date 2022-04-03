package com.last.prj.ffile.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.last.prj.ffile.service.FfileMapper;
import com.last.prj.ffile.service.FfileService;
import com.last.prj.ffile.service.FfileVO;
import com.last.prj.ffile.service.FilemasterVO;

@Repository("ffileDao")
public class FfileServiceImpl implements FfileService {
	
	@Autowired
	private FfileMapper map;

	@Override
	public int ffileInsert(FfileVO ffile) {
		return map.ffileInsert(ffile);
	}

	@Override
	public int fmInsert(FilemasterVO filemaster) {
		return map.fmInsert(filemaster);
	}
	
}
