package com.sp.sample;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.domain.MemberVO;
import com.sp.service.MemberService;

@Controller
@RequestMapping("*")
public class S_controller {
	
	private static final Logger logger = LoggerFactory.getLogger(S_controller.class);
	
	@Inject
	MemberService Memberservice;
	
	@RequestMapping("/main")
	public void goMain() {
		logger.info("main");
	}
	
	@RequestMapping("/joinform")
	public void goJoinForm() {
		logger.info("form");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(MemberVO vo) throws Exception {
		
		Memberservice.insertMember(vo);
		logger.info(vo.getId());
		return "main";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(String id) throws Exception {
		logger.info("mamam");
		MemberVO vo = new MemberVO(); 
		vo = Memberservice.loginMember(id);
		logger.info("moomoomoo");
		logger.info(vo.getId());
		return "main";
	}
}
