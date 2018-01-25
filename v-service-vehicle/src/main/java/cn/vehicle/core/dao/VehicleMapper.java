package cn.vehicle.core.dao;

import cn.vehicle.client.model.Vehicle;
import cn.vehicle.core.model.VehicleManage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 17921 on 2018/1/15.
 */
public interface VehicleMapper {
    /**
     * 通过vin查询车辆信息
     * @param map
     * @return
     */
    public VehicleManage getVehicleByvin(Map<String,Object> map);

    /**
     * 查询所有车辆
     * @return
     */
    public ArrayList<VehicleManage> getVehicleList(Map<String,Object> map);

    /**
     * 通过前台传入的参数查询车辆信息
     * @param map
     * @return
     */
    public ArrayList<VehicleManage> getVehicleListbyVehicle(Map<String,Object> map);

    /**
     * 添加车辆
     * @param vehicle
     * @return
     */
    public int addVrhicle(Vehicle vehicle);

    /**
     * 根据id删除车辆信息
     * @param id
     * @return
     */
    public int delvehiclebyid(int id);
    /**
     * 根据id查询车辆
     * @param id
     * @return
     */

    public VehicleManage getVehiclebyid(int id);

    /**
     * 根据id修改车辆信息
     * @param vehicle
     * @return
     */

    public int upVehiclebyid(Vehicle vehicle);
    /**
     * 查询总记录数
     * @return
     */
    public int selCount();
}
