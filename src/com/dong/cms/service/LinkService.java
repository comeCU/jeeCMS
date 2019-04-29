package com.dong.cms.service;

import java.util.List;
import java.util.Map;

import com.dong.cms.entity.Link;
/**
 * 
 * @ClassName: LinkService 
 * @Description: 友情链接Service接口
 * @author dong 
 * @date Apr 29, 2019 4:48:09 PM 
 * @keywords : 
 *
 */
public interface LinkService {
    /**
     * 根据条件分页查询友情链接集合
     * @param map
     * @return
     */
    public List<Link> list(Map<String, Object> map);

}
