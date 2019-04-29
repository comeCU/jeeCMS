package com.dong.cms.dao;

import java.util.List;

import com.dong.cms.entity.Article;
/**
 * 
 * @ClassName: ArticleDao 
 * @Description: 文章Dao接口
 * @author dong 
 * @date Apr 29, 2019 10:51:13 PM 
 * @keywords : 
 *
 */
public interface ArticleDao {
    /**
     * 获取最新文章8篇
     * @return
     */
    public List<Article> getNewest();

}
