package com.dong.cms.service.impl;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ContextLoader;

import com.dong.cms.entity.Link;
import com.dong.cms.service.LinkService;
/**
 * 
 * @ClassName: InitComponet 
 * @Description: 初始化组件，数据重新获取与缓存
 * @author dong 
 * @date Apr 29, 2019 6:01:10 PM 
 * @keywords : 
 *
 */
@Component("initComponet")
public class InitComponet implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // TODO Auto-generated method stub

    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        refreshSystem(application);
    }
    
    /**
     * 刷新application缓存
     * @param application
     */
    public void refreshSystem(ServletContext application) {
        // 拿到spring核心容器
        ApplicationContext act = ContextLoader.getCurrentWebApplicationContext();
        LinkService linkService = (LinkService) act.getBean("linkService");
        List<Link> linkList = linkService.list(null);
        
        application.setAttribute("linkList", linkList);
    }

}
