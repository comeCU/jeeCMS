package com.dong.cms.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dong.cms.entity.ArcType;
import com.dong.cms.entity.Article;
import com.dong.cms.service.ArticleService;
import com.dong.cms.utils.NavUtil;

/**
 * 
 * @ClassName: ArticleController 
 * @Description: 文章Controller层
 * @author dong 
 * @date May 6, 2019 4:19:13 PM 
 * @keywords : 
 *
 */
@Controller
@RequestMapping("/article")
public class ArticleController {
    @Resource
    private ArticleService articleService;
    
    @RequestMapping("/{id}")
    public String details(@PathVariable("id") Integer id, Model model) {
        Article article = articleService.findById(id);
        model.addAttribute("article", article);
        
        ArcType arcType = article.getArcType();
        
        model.addAttribute("navCode", NavUtil.getArticleNavigation(arcType.getTypeName(), arcType.getId(), article.getTitle()));
        
        return "article";
    }
}
