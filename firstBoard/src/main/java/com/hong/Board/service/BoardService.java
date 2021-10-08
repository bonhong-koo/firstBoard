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
		pageObject.setTotalRow(mapper.getCount());
		System.out.println("BoardService.list().pageObject: " + pageObject);
		return mapper.list(pageObject);
	}

	public BoardVO view(int no) {
		// 
		return mapper.view(no);
	}

	public int update(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}

	public int delete(int no) {
		// TODO Auto-generated method stub
		return mapper.delete(no);
		
	}
	public int write(BoardVO vo) {
		return mapper.write(vo);
	}
	

}
