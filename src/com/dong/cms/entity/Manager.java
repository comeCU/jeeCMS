package com.dong.cms.entity;
/**
 * 
 * @ClassName: Manager 
 * @Description: 管理员实体类
 * @author dong 
 * @date Apr 23, 2019 9:50:14 PM 
 * @keywords : 
 *
 */
public class Manager {
    private Integer id;
    private String userName;
    private String password;
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    
}
