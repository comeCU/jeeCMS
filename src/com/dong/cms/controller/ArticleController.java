package com.dong.cms.controller;


import java.util.Arrays;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dong.cms.entity.ArcType;
import com.dong.cms.entity.Article;
import com.dong.cms.service.ArticleService;
import com.dong.cms.utils.NavUtil;
import com.dong.cms.utils.StringUtil;

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
    public String details(@PathVariable("id") Integer id, Model model, HttpServletRequest request) {
        Article article = articleService.findById(id);
        model.addAttribute("article", article);
        
        ArcType arcType = article.getArcType();
        
        model.addAttribute("navCode", NavUtil.getArticleNavigation(arcType.getTypeName(), arcType.getId(), article.getTitle()));
        
        String keyWords=article.getKeyWords();
        if(StringUtil.isNotEmpty(keyWords)){
            String arr[]=keyWords.split(" ");
            model.addAttribute("keyWords", StringUtil.filterWhite(Arrays.asList(arr)));
        }else{
            model.addAttribute("keyWords", null);
        }
        
        article.setClick(article.getClick()+1);
        articleService.update(article);
        model.addAttribute("pageCode", this.getUpAndDownPageCode(articleService.getLastArticle(id), articleService.getNextArticle(id), request.getServletContext().getContextPath()));
        
        return "article";
    }
    
    /**
     * 获取下一篇文章和上一篇文章代码
     * @param lastArticle
     * @param nextArticle
     * @param projectContext
     * @return
     */
    public String getUpAndDownPageCode(Article lastArticle,Article nextArticle,String projectContext){
        StringBuffer pageCode=new StringBuffer();
        if(lastArticle==null || lastArticle.getId()==null){
            pageCode.append("<p>上一篇：没有了</p>");
        }else{
            pageCode.append("<p>上一篇：<a href='"+projectContext+"/article/"+lastArticle.getId()+".html'>"+lastArticle.getTitle()+"</a></p>");
        }
        
        if(nextArticle==null || nextArticle.getId()==null){
            pageCode.append("<p>下一篇：没有了</p>");
        }else{
            pageCode.append("<p>下一篇：<a href='"+projectContext+"/article/"+nextArticle.getId()+".html'>"+nextArticle.getTitle()+"</a></p>");
        }
        return pageCode.toString();
    }
}
