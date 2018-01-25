package cn.vehicle.core.model;

import java.io.Serializable;

/**
 * 车辆表
 * Created by 17921 on 2018/1/15.
 */
public class VehicleManage implements Serializable {
    @Override
    public String toString() {
        return "VehicleManage{" +
                "id=" + id +
                ", carLicense='" + carLicense + '\'' +
                ", vin='" + vin + '\'' +
                ", iccid=" + iccid +
                ", carType=" + carType +
                ", provinces='" + provinces + '\'' +
                ", city='" + city + '\'' +
                '}';
    }

    private static final long serialVersionUID = 1L;
    private Integer id; //流水号
    private String carLicense;//车牌号
    private String vin;//vin
    private Integer iccid;//
    private Integer carType;//车辆类型
    private String provinces;//省份
    private String city;//城市


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarLicense() {
        return carLicense;
    }

    public void setCarLicense(String carLicense) {
        this.carLicense = carLicense;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public Integer getIccid() {
        return iccid;
    }

    public void setIccid(Integer iccid) {
        this.iccid = iccid;
    }

    public Integer getCarType() {
        return carType;
    }

    public void setCarType(Integer carType) {
        this.carType = carType;
    }

    public String getProvinces() {
        return provinces;
    }

    public void setProvinces(String provinces) {
        this.provinces = provinces;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
