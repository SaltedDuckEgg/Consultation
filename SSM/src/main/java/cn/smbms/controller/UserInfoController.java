package cn.smbms.controller;

import cn.smbms.entity.UserInfo;
import cn.smbms.service.IUserInfoService;
import cn.smbms.util.PageUtil;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Happy on 2017-11-09.
 */
@Controller
public class UserInfoController {
    //service
    @Resource(name = "userService")
    IUserInfoService userInfoService;

    //登陆
   @RequestMapping("/login")
  public String isLogin(UserInfo info, HttpSession session){
       System.out.println("12312312");
       UserInfo user = userInfoService.login(info);
       if(user!=null){
           //登录成功
           
           session.setAttribute("userinfo",user);
           return "/jsp/welcome.jsp";
       }else{
        //登录失败，跳回login
           return "/jsp/login.jsp";
       }
   }
   //分页
    @RequestMapping("/findAll")
    @ResponseBody
    public Object findAll (@RequestParam(defaultValue = "1",required = false) int pageindex,@RequestParam(defaultValue = "2",required = false) int pagesize, Model model){

        PageUtil<UserInfo> page = userInfoService.findOnePageData(pageindex, pagesize);
        return page;




    }
    //easyui 分页
    @RequestMapping(value = "/findByName" )
    @ResponseBody
    public Object  findByName(@RequestParam(defaultValue = "1",required = false,value = "page") int pageindex,@RequestParam(defaultValue = "2",required = false,value = "rows")int pagesize,UserInfo info){
        PageUtil<UserInfo> page = userInfoService.findOnePageData(pageindex, pagesize,info);
        Map<String,Object>map=new HashMap<String,Object>();
        map.put("total",page.getTotalrecords());
        map.put("rows",page.getList());
        return map;
    }
    //添加easyui
    @RequestMapping("/AddUser")
    public String addUser(UserInfo info){
        boolean flag = userInfoService.addUser(info);

        return "/jsp/userList.jsp";
    }
    //删除
    @RequestMapping("/delUser")
    public Object  delUser(UserInfo info){

        boolean flag = userInfoService.delUser(info.getId());
        return "redirect:/jsp/userList.jsp";
    }
    //easyui 批量删除
    @ResponseBody
    @RequestMapping(value = "/delUsers" ,method = RequestMethod.POST)
    public Object delUser(@RequestParam(value = "ids",required = false) String  ids){
        String [] idstr = ids.split(",");
        boolean flag = false;
        for (String id:idstr){
            flag = userInfoService.delUser(Integer.parseInt(id));
        }
        return flag;
    }
    //修改
    @RequestMapping("/update")
public String updateUser(UserInfo info,Model model){
        UserInfo infos = userInfoService.findById(info.getId());
        model.addAttribute("infos",infos);
        return "/jsp/userUpdate.jsp";
}
//修改easyui
    @ResponseBody
    @RequestMapping(value = "/updateEasyui",method = RequestMethod.POST )
    public Object updata(int id){
        System.out.println("easyui--------------------------------------------");
        UserInfo user = userInfoService.findById(id);
        System.out.println(user.getUserName());
        return user;
    }
    @RequestMapping(value = "/updateuser" )
    @ResponseBody
    public Object updatauser(UserInfo info){
        System.out.println(info.getId());
        int num = userInfoService.updateUser(info);
        return num;
    }
}
