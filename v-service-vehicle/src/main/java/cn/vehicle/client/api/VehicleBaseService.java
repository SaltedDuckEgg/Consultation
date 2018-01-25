package cn.vehicle.client.api;


import cn.vehicle.client.model.Vehicle;
import cn.vehicle.core.model.VehicleManage;
import cn.vehicle.core.util.PageUtil;
import com.github.pagehelper.PageInfo;

import java.util.ArrayList;
import java.util.List;

public interface VehicleBaseService {




	/**
	 * 通过vin查询车辆 分页
	 * @param vin
	 * @return
	 * @throws Exception
	 */
	public PageInfo<VehicleManage> getVehicleByvin(String vin) throws Exception;

	/**
	 * 查询所有车辆
	 * @return
	 * @throws Exception
	 */
	public PageInfo<VehicleManage> getVehicle(Integer page,Integer rows) throws Exception;

	/**
	 * t通过前台传入的条件查询呢所有符合·条件的车辆信息
	 * @param vehicle
	 * @return
	 * @throws Exception
	 */
	public PageInfo<VehicleManage> getVehiclebyVehicle(Integer page,Integer rows,Vehicle vehicle) throws Exception;

	/**
	 * 添加车辆
	 * @param vehicle
	 * @return
	 * @throws Exception
	 */
	public int addVehicle(Vehicle vehicle)throws Exception;
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
