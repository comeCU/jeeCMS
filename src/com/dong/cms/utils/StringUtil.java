package com.dong.cms.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @ClassName: StringUtil 
 * @Description: 字符串工具类
 * @author dong 
 * @date May 8, 2019 10:11:47 PM 
 * @keywords : 
 *
 */
public class StringUtil {

    /**
     * 判断是否为空
     * 
     * @param str
     * @return 不为空返回true 否则返回false
     */
    public static boolean isNotEmpty(String str) {
        if (str != null && !" ".equals(str)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 过滤掉 集合中的空格元素
     * 
     * @param list
     *            (a b).spit(" ")===a 空格 空格 空格 b
     * @return
     */
    public static List<String> filterWhite(List<String> list) {
        List<String> resultList = new ArrayList<String>();
        for (String str : list) {
            if (isNotEmpty(str)) {
                resultList.add(str);
            }
        }
        return resultList;// a b
    }

    /*
     * 对于连续空格的问题也可以这样处理 int j=0; String str =
     * "     fasdfwe   qwfqwef  4113r1e asdf"; for (String i : str.split(" +")) {
     * 
     * System.out.println(i); System.out.println(j++); }
     */
}
