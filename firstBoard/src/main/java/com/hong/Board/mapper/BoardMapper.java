package com.hong.Board.mapper;

import java.util.List;

import com.hong.Board.vo.BoardVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {
	
	//게시판 리스트
	public List<BoardVO> list(PageObject pageObject);
	//전체 데이터 갯수를 가져오는 메서드
	public Integer getCount();
	//게시판 글작성
	public int write(BoardVO vo);
	//게시판 글보기
	public BoardVO view(int no);
	//게시판 글수정
	public int update(BoardVO vo);
	//게시판 글삭제
	public int delete(int no);
	//조회수 상승
	public int upHit(int no);

}
