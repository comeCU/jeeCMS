package com.dong.cms.service;

import java.util.List;
import java.util.Map;

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
     * 获取8篇最新文章
     * @return
     */
    public List<Article> getNewest();
    
    /**
     * 获取8篇最新推荐文章
     * @return
     */
    public List<Article> getRecommend();
    
    /**
     * 获取最新5条幻灯文章
     * @return
     */
    public List<Article> getSlide();
    
    /**
     * 根据文章类别来查找对应最新的8条文章
     * @param typeId
     * @return
     */
    public List<Article> getIndex(Integer typeId);
    
    /**
     * 通过id查询文章
     * @param id
     * @return
     */
    public Article findById(Integer id);
    
    /**
     * 获取上一个文章
     * @param id
     * @return
     */
    public Article getLastArticle(Integer id);
    
    /**
     * 获取下一个文章
     * @param id
     * @return
     */
    public Article getNextArticle(Integer id);
    
    /**
     * 更新文章
     * @param article
     * @return
     */
    public Integer update(Article article);
    
    /**
     * 根据条件查询文章
     * @param map
     * @return
     */
    public List<Article> list(Map<String, Object> map);
    
    /**
     * 根据条件获取总记录数
     * @param map
     * @return
     */
    public Long getTotal(Map<String, Object> map);
}
