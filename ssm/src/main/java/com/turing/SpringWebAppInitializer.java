package com.turing;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.turing.config.Rootconfig;
import com.turing.config.WebConfig;



public class SpringWebAppInitializer extends  AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		
		return new Class<?>[] {Rootconfig.class};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class<?>[] {WebConfig.class};
	}
	
	@Override
	protected String[] getServletMappings() {
		
		return new String[] {"/"};
	}
	
	@Override
		protected Filter[] getServletFilters() {
			CharacterEncodingFilter filter=new CharacterEncodingFilter("utf-8");
			return new Filter[] {filter};
		}
	

}
