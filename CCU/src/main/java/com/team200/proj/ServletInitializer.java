package com.team200.proj;

import java.util.Collections;

import org.apache.catalina.Context;
import org.apache.tomcat.util.descriptor.web.JspConfigDescriptorImpl;
import org.apache.tomcat.util.descriptor.web.JspPropertyGroup;
import org.apache.tomcat.util.descriptor.web.JspPropertyGroupDescriptorImpl;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

//Springboot 에서 기존web.xml에서 사용하던 jsp-config include 사용
//즉 모든 jsp, jspf파일의 앞 뒤에 include적용
@Component
public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(CcuApplication.class);
	}
	@Bean
	public ConfigurableServletWebServerFactory configurableServletWebServerFactory() {
		return new TomcatServletWebServerFactory() {
		
		@Override
		protected void postProcessContext(Context context) {
			super.postProcessContext(context);
			JspPropertyGroup jspPropertyGroup = new JspPropertyGroup();
				
			jspPropertyGroup.addUrlPattern("*.jsp");
			jspPropertyGroup.addUrlPattern("*.jspf");
			jspPropertyGroup.setPageEncoding("UTF-8");
			jspPropertyGroup.setScriptingInvalid("true");
			jspPropertyGroup.addIncludePrelude("/WEB-INF/views/inc/header.jsp");
			jspPropertyGroup.addIncludeCoda("/WEB-INF/views/inc/footer.jsp");
			jspPropertyGroup.setTrimWhitespace("true");
			jspPropertyGroup.setDefaultContentType("text/html");
				
			JspPropertyGroupDescriptorImpl jspPropertyGroupDescriptor = new JspPropertyGroupDescriptorImpl(jspPropertyGroup);
			context.setJspConfigDescriptor(new JspConfigDescriptorImpl(Collections.singletonList(jspPropertyGroupDescriptor), Collections.emptyList()));
				
				
			}	

		};
		
	}	

}
