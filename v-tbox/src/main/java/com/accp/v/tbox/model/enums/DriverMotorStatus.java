package com.accp.v.tbox.model.enums;

public enum DriverMotorStatus {
	/**
	 * 车辆登入
	 */
	RUN("耗电", 1),
	/**
	 * 实时信息上报
	 */
	STOP("发电", 2),

	CLOSE("断电",3),

	READY("准备",4);



	DriverMotorStatus() {

	}

	DriverMotorStatus(String key, int value) {
		this.k = key;
		this.v = value;
	}

	private String k;

	private int v;

	public DriverMotorStatus valueOf(int value) {
		switch (value) {
		case 1:
			return RUN;
		case 2:
			return STOP;
			case 3:
				return CLOSE;
			case 4:
				return READY;
		default:
			return null;
		}
	}

	public static String getKey(int value) {
		for (DriverMotorStatus c : DriverMotorStatus.values()) {
			if (c.getV() == value) {
				return c.k;
			}
		}
		return null;
	}

	public String getK() {
		return k;
	}

	public int getV() {
		return v;
	}
}
