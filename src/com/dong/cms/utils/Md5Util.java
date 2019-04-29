package com.dong.cms.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * 
 * @ClassName: Md5Util 
 * @Description: Md5加密工具类
 * @author dong 
 * @date Apr 23, 2019 10:08:00 PM 
 * @keywords : 
 *
 */
public class Md5Util {
    
    public static final String SALT = "com.dong.cms";

    public static String md5(String str, String salt) {
        return new Md5Hash(str, salt).toString();
    }
    
    public static void main(String[] args) {
        String pwd = "123456";
        System.out.println("Md5加密后：" + Md5Util.md5(pwd, Md5Util.SALT));;
    }
}
