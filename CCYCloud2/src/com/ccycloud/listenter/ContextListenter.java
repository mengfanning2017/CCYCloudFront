package com.ccycloud.listenter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenter implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent contextEvent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent contextEvent) {
		// TODO Auto-generated method stub
		String dataServiceLocation = "";
		Map<String, String> zichanfuzhaiMap = new HashMap<String, String>();
		try {
			ClassLoader classLoader = this.getClass().getClassLoader();  
			 Properties prop = new Properties();  
			 prop.load(classLoader.getResourceAsStream("/webcontext.properties"));
			 dataServiceLocation = prop.get("dataServiceLocation")==null?"":prop.get("dataServiceLocation").toString();
			 prop.load(classLoader.getResourceAsStream("/zichanfuzhai.properties"));
			 prop.clear();
			 for (Object key : prop.keySet()) {
				zichanfuzhaiMap.put(key.toString(), prop.get(key)==null?"":prop.get(key).toString());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		ServletContext context = contextEvent.getServletContext();
		context.setAttribute("dataServiceLocation", dataServiceLocation);
		context.setAttribute("zichanfuzhaiMap", zichanfuzhaiMap);
	}
}
