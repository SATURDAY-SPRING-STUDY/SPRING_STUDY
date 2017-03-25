package com.hyo.config;




import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
//@Profile("develope")
@PropertySource("database.properties")
@EnableTransactionManagement
public class DatabaseConfig {
	
	@Value("${db.driver-class-name}")
	private String driverClassName;
	
	@Value("${db.username}")
	private String username;
	
	@Value("${db.password}")
	private String password;
	
	@Value("${db.url}")
	private String url;
	
	@Autowired
	private ApplicationContext ctx;
	
	
	@Bean
	public BasicDataSource dataSource(){
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(driverClassName);
		source.setUsername(username);
		source.setPassword(password);
		source.setUrl(url);
		
		return source;
	}
	
	@Bean 
	@Autowired
	public SqlSessionFactory sqlSessionFactory(DataSource datasource)throws Exception{
		SqlSessionFactoryBean ssfb = new SqlSessionFactoryBean();
		ssfb.setDataSource(datasource);
		ssfb.setTypeAliasesPackage("com.hyo.domain");
		ssfb.setMapperLocations(ctx.getResources("classpath:mapper/*.xml"));
		
		return(SqlSessionFactory)ssfb.getObject();

	}
	
	@Bean
	@Autowired
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory factory){
		return new SqlSessionTemplate(factory);
		
	}

}
