package com.dong.cms.utils;

import java.io.InputStream;
import java.util.Properties;

/**
 * 
 * @ClassName: PropertiesUtil 
 * @Description: properties配置文件工具类
 * @author dong 
 * @date May 6, 2019 4:26:46 PM 
 * @keywords : 
 *
 */
public class PropertiesUtil {
    
    /**
     * 根据key获取value
     * @param key
     * @return
     */
    public static String getValue(String key) {
        Properties prop = new Properties();
        InputStream in = PropertiesUtil.class.getResourceAsStream("/cms.properties");
        
        try {
            prop.load(in);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return prop.getProperty(key);
    }

    /*public static void main(String[] args) {
        System.out.println(PropertiesUtil.getValue("host"));
    }*/ 

}
