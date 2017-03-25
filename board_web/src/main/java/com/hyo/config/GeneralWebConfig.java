package com.hyo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class GeneralWebConfig {
	
	@Bean
	public ViewResolver viewResolver(){
		InternalResourceViewResolver viewResolver 
		//spring한테 어떤 파일 형식을 사용할 지를 알려주는 기능
		= new InternalResourceViewResolver("/view/", ".jsp");
		
		return viewResolver;
	}

}
