package com.dong.cms.dao;

import com.dong.cms.entity.Manager;
/**
 * 
 * @ClassName: ManagerDao 
 * @Description: 管理员Dao接口
 * @author dong 
 * @date Apr 25, 2019 7:17:14 PM 
 * @keywords : 
 *
 */
public interface ManagerDao {
    /**
     * 通过用户名查询用户
     * @param userName
     * @return
     */
    public Manager getByUserName(String userName);

}
