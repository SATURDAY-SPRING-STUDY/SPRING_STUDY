package com.hyo.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.NoArgsConstructor;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Member {
	
	private Integer id;
	private String account;
	private String passwd;
	private String name;

}
