package com.niit.rest.configuration;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{
	@Override
	protected String[] getServletMapping(){
	return new String[]
			{"/"};}

}
