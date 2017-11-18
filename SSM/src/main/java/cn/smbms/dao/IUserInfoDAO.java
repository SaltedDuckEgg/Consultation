package cn.smbms.dao;

import cn.smbms.entity.UserInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by Happy on 2017-11-09.
 */
public interface IUserInfoDAO {
    //登录
    public UserInfo login(UserInfo info);
    //查询所有
    public List<UserInfo>findAll();
    //查询单页数据
    public List<UserInfo> findOnePageData(Map<String,Object>map);
    public List<UserInfo> findOnePageDataByName(Map<String,Object>map);
    public List<UserInfo>findByName(String name);
    //3.获取总记录数
    public int getTotalRecords();
    public int getTotalRecordsByName(String name);
    //添加用户
    public boolean addUser(UserInfo info);
    //删除用户
    public boolean delUser(int id);
    //根据id查询
    public UserInfo findById(int id);
    //修改用户
    public int updateUser(UserInfo userInfo);
}
