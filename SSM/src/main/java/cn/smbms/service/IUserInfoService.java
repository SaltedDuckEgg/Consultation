package cn.smbms.service;

import cn.smbms.entity.UserInfo;
import cn.smbms.util.PageUtil;

import java.util.List;

/**
 * Created by Happy on 2017-11-09.
 */
public interface IUserInfoService {
    //登录
    public UserInfo login(UserInfo info);
    public List<UserInfo> findAll();
    public PageUtil<UserInfo> findOnePageData(int pageindex, int pagesize);
    public PageUtil<UserInfo>findOnePageData(int pageindex, int pagesize,UserInfo info);
    public int getTotalRecords();
    public boolean addUser(UserInfo info);
    public boolean delUser(int id);
    public UserInfo findById(int id);
    //修改用户
    public int updateUser(UserInfo userInfo);
}
