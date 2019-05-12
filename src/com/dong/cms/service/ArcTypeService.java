package com.dong.cms.service;

import java.util.List;
import java.util.Map;

import com.dong.cms.entity.ArcType;
/**
 * 
 * @ClassName: ArcTypeService 
 * @Description: 文章类别service接口
 * @author dong 
 * @date Apr 29, 2019 8:11:01 PM 
 * @keywords : 
 *
 */
public interface ArcTypeService {
    /**
     * 根据条件分页查询文章类别集合
     * @param map
     * @return
     */
    public List<ArcType> list(Map<String, Object> map);
    
    /**
     * 根据id查询文章类型实体
     * @param id
     * @return
     */
    public ArcType findById(Integer id);

}
