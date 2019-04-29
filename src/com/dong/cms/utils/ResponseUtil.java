package com.dong.cms.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @ClassName: ResponseUtil 
 * @Description: ajax返回输出流工具类
 * @author dong 
 * @date Apr 23, 2019 10:13:25 PM 
 * @keywords : 
 *
 */
public class ResponseUtil {
    /**
     * 页面输出
     * @param response
     * @param obj
     * @throws IOException
     */
    public static void write(HttpServletResponse response, Object obj) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println(obj.toString());
        out.flush();
        out.close();
    }

}
