package com.hong.Board.mapper;

import java.util.List;

import com.hong.Board.vo.BoardVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {
	
	//게시판 리스트
	public List<BoardVO> list(PageObject pageObject);

}
