package com.dong.cms.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dong.cms.entity.Manager;
import com.dong.cms.service.ManagerService;
import com.dong.cms.utils.Md5Util;
import com.dong.cms.utils.ResponseUtil;

import net.sf.json.JSONObject;
/**
 * 
 * @ClassName: ManagerController 
 * @Description: 管理员Controller层
 * @author dong 
 * @date Apr 23, 2019 10:42:40 PM 
 * @keywords : 
 *
 */
@Controller
@RequestMapping("/managerController")
public class ManagerController {
    @Resource
    private ManagerService managerService;

    /**
     * 用户登录
     * @param manager
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/login")
    public String login(Manager manager, HttpServletResponse response) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(manager.getUserName(), 
                Md5Util.md5(manager.getPassword(), Md5Util.SALT));
        JSONObject result = new JSONObject();
        try {
            subject.login(token);
            result.put("success", true);
        } catch (Exception e) {
            result.put("success", false);
            result.put("errorInfo", "用户名或者密码错误！");
            e.printStackTrace();
        }
        
        ResponseUtil.write(response, result);
        return null;
    }
    
}
