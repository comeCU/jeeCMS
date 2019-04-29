package com.dong.cms.service;

import java.util.List;

import com.dong.cms.entity.Article;
/**
 * 
 * @ClassName: ArticleService 
 * @Description: 文章service接口
 * @author dong 
 * @date Apr 29, 2019 11:03:52 PM 
 * @keywords : 
 *
 */
public interface ArticleService {
    /**
     * 获取最新文章
     * @return
     */
    public List<Article> getNewest();

}
