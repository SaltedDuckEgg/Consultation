package cn.vehicle.core.service;


import cn.vehicle.client.api.VehicleBaseService;
import cn.vehicle.client.model.Vehicle;
import cn.vehicle.core.dao.VehicleMapper;
import cn.vehicle.core.model.VehicleManage;
import cn.vehicle.core.util.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VehicleBaseServiceImpl implements VehicleBaseService {


	@Autowired
	private VehicleMapper vehicleMapper;


	// JDBC

	public Vehicle getVehicleByLince(String lince) throws Exception {
		Vehicle vehicle =new  Vehicle ();
		vehicle.setCarLicense("京B222222");
		return vehicle;
	}
    /**
     * 通过vin查询车辆
     * @param vin
     * @return
     */
	public PageInfo<VehicleManage> getVehicleByvin(String vin) throws Exception {
        Map<String,Object> map= new  HashMap<String, Object>();
        map.put("vin",vin);

        VehicleManage vehicle = vehicleMapper.getVehicleByvin(map);
        List<VehicleManage> vehicleList= new ArrayList<VehicleManage>();
        vehicleList.add(vehicle);

        PageInfo<VehicleManage> pageInfo=new PageInfo<VehicleManage>(vehicleList);

        return pageInfo;
	}

    /**
     * 查询所有车辆
     * @return
     * @throws Exception
     */
	public PageInfo<VehicleManage> getVehicle(Integer page,Integer rows) throws Exception {
        PageHelper.startPage(page,rows);
        Map<String,Object> map= new  HashMap<String, Object>();
        ArrayList<VehicleManage> vehicleList = vehicleMapper.getVehicleList(map);
        PageInfo<VehicleManage> pageInfo=new PageInfo<VehicleManage>(vehicleList);
        return pageInfo;
	}
    /**
     * 通过前台传入的条件查询呢所有符合·条件的车辆信息
     * @param vehicle
     * @return
     * @throws Exception
     */
    public PageInfo<VehicleManage> getVehiclebyVehicle(Integer page,Integer rows,Vehicle vehicle) throws Exception {
        PageHelper.startPage(page,rows);
        Map<String,Object> map= new  HashMap<String, Object>();
        map.put("carLicense",vehicle.getCarLicense());
        map.put("vin",vehicle.getVin());
        map.put("iccid",vehicle.getIccid());
        map.put("carType",vehicle.getCarType());
        ArrayList<VehicleManage> vehicleListbyVehicle = vehicleMapper.getVehicleListbyVehicle(map);
        PageInfo<VehicleManage> pageInfo=new PageInfo<VehicleManage>(vehicleListbyVehicle);

        return pageInfo;
    }

    /**
     * 添加车辆
     * @param vehicle
     * @return
     * @throws Exception
     */
    public int addVehicle(Vehicle vehicle) throws Exception {
        int i = vehicleMapper.addVrhicle(vehicle);
        return i;
    }

    public int delvehiclebyid(int id) {
        System.out.println(id);
        int delvehiclebyid = vehicleMapper.delvehiclebyid(id);
        return delvehiclebyid;
    }

    public VehicleManage getVehiclebyid(int id) {
        VehicleManage vehicle = vehicleMapper.getVehiclebyid(id);
        return vehicle;
    }

    public int upVehiclebyid(Vehicle vehicle) {
        int i = vehicleMapper.upVehiclebyid(vehicle);
        return i;
    }

    public int selCount() {
        int i = vehicleMapper.selCount();
        return i;
    }


}
