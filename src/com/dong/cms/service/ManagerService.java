package com.dong.cms.service;

import com.dong.cms.entity.Manager;
/**
 * 
 * @ClassName: ManagerService 
 * @Description: 管理员Service接口
 * @author dong 
 * @date Apr 23, 2019 9:56:02 PM 
 * @keywords : 
 *
 */
public interface ManagerService {
    /**
     * 通过用户名查询用户
     * @param userName
     * @return
     */
    public Manager getByUserName(String userName);

}
