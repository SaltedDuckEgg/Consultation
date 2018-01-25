package cn.vehicle.controller;

import cn.vehicle.client.api.VehicleBaseService;
import cn.vehicle.client.model.Vehicle;
import cn.vehicle.core.model.VehicleManage;
import cn.vehicle.core.util.PageUtil;
import com.github.pagehelper.PageInfo;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 17921 on 2018/1/18.
 */
@Controller
public class VehicleController {

    @Resource(name = "vehicleBaseService")
   private VehicleBaseService vehicleBaseService;

    //查询所有
    @RequestMapping("/getVehiclelist")
    @ResponseBody
    public Object getVehiclelist(@RequestParam(defaultValue = "1",required = false)Integer page,@RequestParam(defaultValue = "3",required = false)Integer rows){
        Map<String,Object> map= new HashMap<String, Object>();
        PageInfo<VehicleManage> vehicle=null;
        try {
            vehicle= vehicleBaseService.getVehicle(page,rows);
        } catch (Exception e) {
            e.printStackTrace();
        }
        for(VehicleManage item:vehicle.getList()){
            System.out.println(item.getCarLicense());
        }
        System.out.println(vehicle.getNavigatepageNums().length+"nssnnsn");
        map.put("rows",vehicle.getList());
        map.put("total",vehicle.getTotal());
        return map;
    }

    //条件查询
    @RequestMapping("/getVehicleByVehicle")
    @ResponseBody
    public Object getVehicleByVehicle(Vehicle vehicle,@RequestParam(defaultValue = "1",required = false)Integer page,@RequestParam(defaultValue = "3",required = false)Integer rows){

        if (vehicle.getVin().equals("")||vehicle.getVin()==""){
            vehicle.setVin(null);
        }
        Map<String,Object> map= new HashMap<String, Object>();
        PageInfo<VehicleManage> vehicleList=null;
        try {
            vehicleList= vehicleBaseService.getVehiclebyVehicle(page,rows,vehicle);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.put("rows",vehicleList.getList());
        map.put("total",vehicleList.getTotal());

        return map;
    }

    //删除
    @RequestMapping("/delVehiclebyid")
    @ResponseBody
    public Object delVehiclebyid(Integer id){
        System.out.println(id+"-------------");
        int delvehiclebyid = vehicleBaseService.delvehiclebyid(id);
        return delvehiclebyid;
    }
    //添加
    @RequestMapping("/AddVehicle")
    @ResponseBody
    public boolean AddVehicle(Vehicle vehicle){
        System.out.println(vehicle.getProvinces());
        System.out.println(vehicle.getVin());
        System.out.println(vehicle.getCity());
        int i=0;
        try {
           i = vehicleBaseService.addVehicle(vehicle);
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean bool=false;
        if (i>0){
            bool=true;
        }
        return bool;
    }

    @RequestMapping("/getAllVehicle")
    public String getAllVehicle(@RequestParam(defaultValue = "1",required = false)Integer page,@RequestParam(defaultValue = "3",required = false)Integer rows,Model model){
        Map<String,Object> map= new HashMap<String, Object>();
        PageInfo<VehicleManage> vehicleList=null;
        try {
            vehicleList= vehicleBaseService.getVehicle(page,rows);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.put("rows",vehicleList.getList());
        map.put("total",vehicleList.getTotal());

       model.addAttribute("rows",vehicleList.getList());
        //model.addAttribute("total",vehicleList.getTotal());

        return "/index.jsp";
    }

    @RequestMapping("/getVehicle")
    @ResponseBody
    public VehicleManage getVehicle(int id){
        System.out.println(id+"getVehiclebyid");
        VehicleManage vehicle = vehicleBaseService.getVehiclebyid(id);

        return vehicle;
    }
    @RequestMapping("/updateVehicle")
    @ResponseBody
    public boolean updateVehicle(Vehicle vehicle){
        int i = vehicleBaseService.upVehiclebyid(vehicle);
        boolean bool=false;
        if (i>0){
            bool=true;
        }
        System.out.println(i+"修改");
        return bool;
    }
}
