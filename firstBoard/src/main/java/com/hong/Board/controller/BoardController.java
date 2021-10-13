package com.hong.Board.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hong.Board.service.BoardService;
import com.hong.Board.vo.BoardVO;
import com.webjjang.util.PageObject;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	// 자동 DI 적용 시키는 어노테이션 2가지- Inject, Autowired
	@Autowired
	private BoardService service;
	
	@GetMapping("/list.do")
	// 실행할 메서드 만들기
	// model 안에 request가 있따. model에 데이터를 저장하면 request에 저장된다
	public  String list(PageObject pageObject, Model model) {
		System.out.println("BoardController.list()");
		model.addAttribute("list", service.list(pageObject));
		// /WEB-INF/views/ + board/list + .jsp
		return "board/list";
	}
	
	// 게시판 글보기
	@GetMapping("/view.do")
	public String view (int no, Model model) {
		service.upHit(no);
		model.addAttribute("vo", service.view(no));
		
		// /WEB-INF/Views/ + board/view + .jsp
		return "board/view";
	}
	
	// 수정 페이지
	@GetMapping("/update.do")
	public String update(int no, Model model) {
		model.addAttribute("vo", service.view(no));
		// /WEB-INF/Views/ + board/update + .jsp
		return "board/update";
	}
	// 수정
	@PostMapping("/update.do")
	public String update(BoardVO Vo) {
		int flag = service.update(Vo);
		
		if(flag == 1) {
			return "redirect:list.do";
		}else {
			return "null";
		}
		
		
	}

	//삭제
	@PostMapping("/delete.do")
	public String delete(int no) {
		int flag = service.delete(no);
		
		if(flag == 1) {
			// /WEB-INF/views/ + board/list + .jsp
			return "redirect:list.do";
		}else {
			return "null";
		}
		
		
	}
	//글쓰기 페이지
	@GetMapping("/write.do")
	public String writeForm() {
		
		// /WEB-INF/views/ + board/write + .jsp
		return "board/write";
	}
	//글쓰기 처리
	@PostMapping("/write.do")
	public String write(BoardVO vo) {
		int flag = service.write(vo);
		if(flag == 1) {
			return "redirect:list.do";			
		}else {
			return "null";
		}
		
	}

}
