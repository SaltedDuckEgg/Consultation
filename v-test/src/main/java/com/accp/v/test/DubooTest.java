package com.accp.v.test;

import cn.vehicle.client.api.VehicleBaseService;
import cn.vehicle.client.model.Vehicle;
import cn.vehicle.core.model.VehicleManage;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



/**
 * Hello world!
 *
 */
public class DubooTest {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"classpath:spring.xml");// 此文件

		VehicleBaseService vehicleBaseService = (VehicleBaseService) context
				.getBean("vehicleBaseService");
		try {
			long time1=System.currentTimeMillis();
			VehicleManage v = vehicleBaseService.getVehicleByvin("MMV2ARB25G0010730");
			System.out.println(v.getVin());
			long time2=System.currentTimeMillis();
			System.out.print("第一个接口调用用时："+(time2-time1));
			VehicleManage v1 = vehicleBaseService.getVehicleByvin("MMV2ARB25G0010730");
			System.out.println(v1.getCarLicense());
			long time3=System.currentTimeMillis();
			System.out.print("第二个接口调用用时："+(time3-time2));

		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
