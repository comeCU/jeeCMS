package com.dong.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dong.cms.dao.ArcTypeDao;
import com.dong.cms.entity.ArcType;
import com.dong.cms.service.ArcTypeService;
/**
 * 
 * @ClassName: ArcTypeImpl 
 * @Description: 文章类型service实现类
 * @author dong 
 * @date Apr 29, 2019 8:55:40 PM 
 * @keywords : 
 *
 */
@Service("arcTypeService")
public class ArcTypeImpl implements ArcTypeService {
    @Resource
    private ArcTypeDao arcTypeDao;
    
    @Override
    public List<ArcType> list(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return arcTypeDao.list(map);
    }

}
