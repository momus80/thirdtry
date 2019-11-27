package com.sp.sample;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.domain.BoardVO;
import com.sp.domain.MemberVO;
import com.sp.service.BoardService;
import com.sp.service.MemberService;

@Controller
@RequestMapping("*")
public class S_controller {

	private static final Logger logger = LoggerFactory.getLogger(S_controller.class);

	@Inject
	MemberService Memberservice;

	@Inject
	BoardService Boardservice;

	@RequestMapping("/main")
	public void goMain() {
		logger.info("main");
	}

	@RequestMapping("/joinform")
	public void goJoinForm() {
		logger.info("form");
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(MemberVO vo) throws Exception {

		Memberservice.insertMember(vo);
		logger.info(vo.getId());
		return "main";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String id) throws Exception {
		MemberVO vo = new MemberVO();
		vo = Memberservice.loginMember(id);
		logger.info(vo.getId());
		return "redirect:/board";
	}

	
	  @RequestMapping(value="/board") 
	  public void board(Model model, String BoardNum) throws Exception{ 
		  logger.info("board");
		  String start = BoardNum; 
		  	if(start == null) { start = "1"; } 
		  	int cnt = 10; 
		  	int st = (Integer.parseInt(start)-1)*cnt;
	  
		  	List<BoardVO> list = null;
	  
		  list = Boardservice.getList(st,cnt); 
		  double count = Math.ceil(Boardservice.getBoardCount()/cnt); 
		  int count1 = (int)count;
		  logger.info(Boardservice.getBoardCount()/cnt+"");
		  int [] rep = new int[count1]; 
		  for(int i=0; i<=rep.length-1; i++) { 
			  rep[i] = i+1; 
		  }
		  
		  model.addAttribute("list", list); 
		  model.addAttribute("rep", rep); 
	  }
	  
	  @RequestMapping(value="/board/get")
	  public String getContent(Model model, int bno) throws Exception{
		  logger.info("get");
		  model.addAttribute("board",Boardservice.getContent(bno));
		  return "boardContent";
	  }
	  @RequestMapping(value="/board/writeform")
	  public String boardWriteForm()throws Exception{
		  logger.info("boardWriteform");
		  return "boardWrite";
	  }
	  
	  @RequestMapping(value="/board/insert")
	  public String insertBoard(BoardVO vo) throws Exception{
		  logger.info("insert");
		  int result = Boardservice.insertBoard(vo);
		  if(result > 0) {
			  
		  }
		  return "redirect:/board";
	  }
	  
	  @RequestMapping(value="/board/remove")
	  public String removeBoard(int bno) throws Exception{
		  logger.info("remove");
		  Boardservice.removeBoard(bno);
		  return "redirect:/board";
	  }
	  
	  @RequestMapping(value="/board/update")
	  public String updateBoard(BoardVO vo) throws Exception{
		  logger.info("update");
		  Boardservice.updateBoard(vo);
		  return "redirect:/board/get?bno="+vo.getBno();
	  }
	  
	  @RequestMapping(value="/board/updateform")
	  public String updateForm(Model model, BoardVO vo) throws Exception {
		  logger.info("updateform");
		  model.addAttribute("board",vo);
		  return "updateform";
	  }
}
