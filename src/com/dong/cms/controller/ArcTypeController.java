package com.dong.cms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dong.cms.entity.ArcType;
import com.dong.cms.entity.Article;
import com.dong.cms.entity.PageBean;
import com.dong.cms.service.ArcTypeService;
import com.dong.cms.service.ArticleService;
import com.dong.cms.utils.NavUtil;
import com.dong.cms.utils.PageUtil;
import com.dong.cms.utils.PropertiesUtil;
import com.dong.cms.utils.StringUtil;


/**
 * 
 * @ClassName: ArcTypeController 
 * @Description: 文章类别Controller类
 * @author dong 
 * @date May 12, 2019 9:52:42 AM 
 * @keywords : 
 *
 */
@Controller
@RequestMapping("/arcType")
public class ArcTypeController {
    @Resource
    private ArticleService articleService;
    @Resource
    private ArcTypeService arcTypeService;
    
    /**
     * 根据类型查询文章结果
     * 1. 拿到分页数据
     *     - 封装查询条件
     *     - 做查询
     *     - 封装文章列表集合
     * 2. 封装分页代码
     *     - 封装文章当前位置导航
     *     - 封装分页（上一页 下一页）
     * 3. 封装跳转视图
     * 
     * @param id 添加了PathVariable注解，用于接收并绑定请求参数，它可以将请求URL中的变量映射到方法的形参上
     * @param page 添加RequestParam注解， 将请求中（写在PageUtil类）page参数的值赋给方法中的page形参
     * @return
     */
    @RequestMapping("/{id}")
    public ModelAndView list(@PathVariable("id")Integer id, @RequestParam(value="page", required=false)String page) {
        ModelAndView mav = new ModelAndView();
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 初始page未传值，指定为1
        if(!StringUtil.isNotEmpty(page)) {
            page = "1";
        }
        // 读取外部文件指定分页大小
        int listPageSize = Integer.parseInt(PropertiesUtil.getValue("listPageSize"));
        // 创建pageBean实例，传入当前页和分页大小，方便后面拿到start和pageSize
        PageBean pageBean = new PageBean(Integer.parseInt(page), listPageSize);
        
        // 封装查询条件
        map.put("typeId", id);
        // 根据目前封装的map中的typeId查询这类文章总数
        Long total = articleService.getTotal(map);
        
        // 继续封装查询条件
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPageSize());
        
        // 查询文章集合
        List<Article> articleList = articleService.list(map);
        mav.addObject("articleList", articleList);
        
        //===============上面拿到分页数据，下面来产生分页的html代码=====================
        
        // 拿到文章类型对象
        ArcType arcType = arcTypeService.findById(id);
        mav.addObject("arcType", arcType);
        
        // 封装文章导航
        mav.addObject("navCode", NavUtil.getArticleListNavigation(arcType.getTypeName()));
        
        //生成列表分页导航（上一页 ，下一页）
        mav.addObject("pageCode", PageUtil.genUpAndDownPagation(
                total.intValue(),
                Integer.parseInt(page), 
                pageBean.getPageSize(), 
                String.valueOf(id))
                );
        
        // 封装跳转视图
        mav.setViewName("articleList");
        return mav;
    }


}
