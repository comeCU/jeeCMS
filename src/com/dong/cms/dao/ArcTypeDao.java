package com.dong.cms.dao;

import java.util.List;
import java.util.Map;

import com.dong.cms.entity.ArcType;
/**
 * 
 * @ClassName: ArcTypeDao 
 * @Description: 文章类别Dao接口
 * @author dong 
 * @date Apr 29, 2019 8:04:10 PM 
 * @keywords : 
 *
 */
public interface ArcTypeDao {
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
