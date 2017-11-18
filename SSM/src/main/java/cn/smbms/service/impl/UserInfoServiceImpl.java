package cn.smbms.service.impl;

import cn.smbms.dao.IUserInfoDAO;
import cn.smbms.entity.UserInfo;
import cn.smbms.service.IUserInfoService;
import cn.smbms.util.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by Happy on 2017-11-09.
 */
@Service("userService")
public class UserInfoServiceImpl implements IUserInfoService {

    @Resource(name = "IUserInfoDAO")
    private IUserInfoDAO userInfoDAO;

    public UserInfo login(UserInfo info) {
        return userInfoDAO.login(info);
    }

    public List<UserInfo> findAll() {
        return userInfoDAO.findAll();
    }

    public PageUtil<UserInfo> findOnePageData(int pageindex, int pagesize) {
        Map<String,Object>map=new HashMap<String,Object>();
        map.put("pageindex",(pageindex-1)*pagesize);
        map.put("pagesize",pagesize);
        PageUtil<UserInfo> page=new PageUtil<UserInfo>();
        page.setPageindex(pageindex);
        page.setPagesize(pagesize);
        int totalRecords = userInfoDAO.getTotalRecords();
        page.setTotalrecords(totalRecords);
        //总页数=totalRecords/pageSize
        page.setTotalpages(page.getTotalrecords()%page.getPagesize()==0?page.getTotalrecords()/page.getPagesize():page.getTotalrecords()/page.getPagesize()+1);
        //集合数据
        page.setList(userInfoDAO.findOnePageData(map));

        return page;
    }

    public PageUtil<UserInfo> findOnePageData(int pageindex, int pagesize, UserInfo info) {
        Map<String,Object>map=new HashMap<String,Object>();
        map.put("pageindex",(pageindex-1)*pagesize);
        map.put("pagesize",pagesize);
        map.put("userName",info.getUserName());
        PageUtil<UserInfo> page=new PageUtil<UserInfo>();
        page.setPageindex(pageindex);
        page.setPagesize(pagesize);
        int totalRecords=0;
        List<UserInfo>list=new ArrayList<UserInfo>();
        if(info!=null&&info.getUserName()!=null){
            totalRecords= userInfoDAO.getTotalRecordsByName(info.getUserName());
            list=userInfoDAO.findOnePageDataByName(map);
        }else{
            totalRecords= userInfoDAO.getTotalRecords();
            list=userInfoDAO.findAll();
        }


        page.setTotalrecords(totalRecords);
        //总页数=totalRecords/pageSize
        page.setTotalpages(page.getTotalrecords()%page.getPagesize()==0?page.getTotalrecords()/page.getPagesize():page.getTotalrecords()/page.getPagesize()+1);
        //集合数据
        page.setList(list);

        return page;
    }


    public int getTotalRecords() {
        return userInfoDAO.getTotalRecords();
    }

    public boolean addUser(UserInfo info) {

        return userInfoDAO.addUser(info);
    }

    public boolean delUser(int id) {
        return userInfoDAO.delUser(id);
    }

    public UserInfo findById(int id) {
        return userInfoDAO.findById(id);
    }

    public int updateUser(UserInfo userInfo) {
        return userInfoDAO.updateUser(userInfo);
    }


}
