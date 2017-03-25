package com.hyo;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.hyo.service.MemberService;

@SpringBootApplication
public class BoardApplication implements CommandLineRunner {

	private Logger log = LoggerFactory.getLogger(BoardApplication.class);
	
	@Autowired
	private MemberService memberService;
	
	public static void main(String[] args) {
		SpringApplication.run(BoardApplication.class, args);
	}

	@Override
	public void run(String... arg0) throws Exception {
		// TODO Auto-generated method stub
		
		log.info(memberService.FindMemberById(1).toString());
		
	}
}
