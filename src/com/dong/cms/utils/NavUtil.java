package com.dong.cms.utils;


/**
 * 
 * @ClassName: NavUtil 
 * @Description: 导航工具类
 * @author dong 
 * @date May 6, 2019 4:58:01 PM 
 * @keywords : 
 *
 */
public class NavUtil {
    /**
     * 生成文章详细页导航
     * @param typeName
     * @param typeId
     * @param articleTitle
     * @return
     */
    public static String getArticleNavigation(String typeName,Integer typeId,String articleTitle){
        StringBuffer navCode=new StringBuffer();
        navCode.append("当前位置：&nbsp;&nbsp;");
        navCode.append("<a href='"+PropertiesUtil.getValue("host")+"'>主页</a>&nbsp;&nbsp;>&nbsp;&nbsp;");
        navCode.append("<a href='"+PropertiesUtil.getValue("host")+"/arcType/"+typeId+".html'>"+typeName+"</a>&nbsp;&nbsp;>&nbsp;&nbsp;"+articleTitle);
        return navCode.toString();
    }
    
}
