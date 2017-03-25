package com.hyo.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyo.domain.Member;

@Transactional
@Service
public class MemberServiceImp implements MemberService {
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public Member FindMemberById(Integer id) {
		// TODO Auto-generated method stub
		return template.selectOne("FindMemberById", id);
	}

}
