package com.turing.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.github.pagehelper.PageInterceptor;

@Configuration
@ComponentScan(basePackages = "com.turing", excludeFilters = {
		@Filter(type = FilterType.ANNOTATION, value = { EnableWebMvc.class, Controller.class }) })
@MapperScan(basePackages = "com.turing.mapper")
public class Rootconfig {
	// 加入数据源
		@Bean
		public DataSource dataSource() {
			BasicDataSource dataSource = new BasicDataSource();
			// 连接四要素
			dataSource.setUrl("jdbc:mysql:///crm");
			dataSource.setDriverClassName("com.mysql.jdbc.Driver");
			dataSource.setUsername("root");
			dataSource.setPassword("0012");
			// 连接池的一些属性
			dataSource.setInitialSize(20);// 初始连接数
			dataSource.setMaxIdle(10);// 最大闲置数
			dataSource.setMinIdle(2);// 最小闲置数
			dataSource.setMaxTotal(50);// 最大连接数
			dataSource.setMaxWaitMillis(5000);// 最大连接等待时间
			return dataSource;
		}
		
		@Bean
		public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
			SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
			// 设置数据源
			factoryBean.setDataSource(dataSource);
			
			org.apache.ibatis.session.Configuration configr=new org.apache.ibatis.session.Configuration();
			configr.setLogImpl(Log4j2Impl.class);
			factoryBean.setConfiguration(configr);
			//设置分页的拦截器
	        PageInterceptor pageInterceptor = new PageInterceptor();
	        //创建插件需要的参数集合
	        Properties properties = new Properties();
	        //配置数据库方言 为oracle
	        properties.setProperty("helperDialect", "mysql");
	        //配置分页的合理化数据
	        properties.setProperty("reasonable", "true");
	        pageInterceptor.setProperties(properties);
	        //将拦截器设置到sqlSessionFactroy中
	        factoryBean.setPlugins(new Interceptor[] {pageInterceptor});
			
			return factoryBean.getObject();
		}
		
		//配置事务管理器
		@Bean
		public DataSourceTransactionManager transactionManager(DataSource dataSource) {
			return new DataSourceTransactionManager(dataSource);
		}
}
