package com.dong.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dong.cms.dao.ArticleDao;
import com.dong.cms.entity.Article;
import com.dong.cms.service.ArticleService;
/**
 * 
 * @ClassName: ArticleServiceImpl 
 * @Description: 文章service实现类
 * @author dong 
 * @date Apr 29, 2019 11:05:07 PM 
 * @keywords : 
 *
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    @Resource
    private ArticleDao articleDao;
    
    @Override
    public List<Article> getNewest() {
        // TODO Auto-generated method stub
        return articleDao.getNewest();
    }

    @Override
    public List<Article> getRecommend() {
        // TODO Auto-generated method stub
        return articleDao.getRecommend();
    }

    @Override
    public List<Article> getSlide() {
        // TODO Auto-generated method stub
        return articleDao.getSlide();
    }

    @Override
    public List<Article> getIndex(Integer typeId) {
        // TODO Auto-generated method stub
        return articleDao.getIndex(typeId);
    }

    @Override
    public Article findById(Integer id) {
        // TODO Auto-generated method stub
        return articleDao.findById(id);
    }

    @Override
    public Article getLastArticle(Integer id) {
        // TODO Auto-generated method stub
        return articleDao.getLastArticle(id);
    }

    @Override
    public Article getNextArticle(Integer id) {
        // TODO Auto-generated method stub
        return articleDao.getNextArticle(id);
    }

    @Override
    public Integer update(Article article) {
        // TODO Auto-generated method stub
        return articleDao.update(article);
    }

    @Override
    public List<Article> list(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return articleDao.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return articleDao.getTotal(map);
    }

}
