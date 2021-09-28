package com.hong.Board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hong.Board.mapper.BoardMapper;
import com.hong.Board.vo.BoardVO;
import com.webjjang.util.PageObject;

@Service
public class BoardService {
	
	@Inject
	private BoardMapper mapper;
	
	public List<BoardVO> list(PageObject pageObject){
		return mapper.list(pageObject);
	}
	

}
