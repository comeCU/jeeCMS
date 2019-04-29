package com.dong.cms.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dong.cms.dao.ManagerDao;
import com.dong.cms.entity.Manager;
import com.dong.cms.service.ManagerService;
/**
 * 
 * @ClassName: ManagerServiceImpl 
 * @Description: 管理员Service实现类
 * @author dong 
 * @date Apr 23, 2019 9:57:39 PM 
 * @keywords : 
 *
 */
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
    @Resource
    private ManagerDao managerDao;
    
    @Override
    public Manager getByUserName(String userName) {
        // TODO Auto-generated method stub
        return managerDao.getByUserName(userName);
    }

}
