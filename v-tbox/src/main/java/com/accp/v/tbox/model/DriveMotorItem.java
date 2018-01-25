package com.accp.v.tbox.model;

import com.accp.v.tbox.model.enums.DriverMotorStatus;

public class DriveMotorItem {
	private String id;
	
	private DriverMotorStatus status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public DriverMotorStatus getStatus() {
		return status;
	}

	public void setStatus(DriverMotorStatus status) {
		this.status = status;
	}
}
