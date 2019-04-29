package com.dong.cms.dao;

import java.util.List;
import java.util.Map;

import com.dong.cms.entity.Link;
/**
 * 
 * @ClassName: LinkDao 
 * @Description: 友情链接Dao接口
 * @author dong 
 * @date Apr 29, 2019 4:42:22 PM 
 * @keywords : 
 *
 */
public interface LinkDao {
    /**
     * 根据条件分页查询友情链接集合
     * @param map
     * @return
     */
    public List<Link> list(Map<String, Object> map);

}
