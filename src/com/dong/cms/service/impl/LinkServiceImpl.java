package com.dong.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dong.cms.dao.LinkDao;
import com.dong.cms.entity.Link;
import com.dong.cms.service.LinkService;
/**
 * 
 * @ClassName: LinkServiceImpl 
 * @Description: 友情链接service实现类
 * @author dong 
 * @date Apr 29, 2019 4:50:37 PM 
 * @keywords : 
 *
 */

@Service("linkService")
public class LinkServiceImpl implements LinkService {
    @Resource
    private LinkDao linkdao;
    
    @Override
    public List<Link> list(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return linkdao.list(map);
    }

}
