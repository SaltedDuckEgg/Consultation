package cn.wy.service.impl;

import cn.wy.dao.IAttendanceDAO;
import cn.wy.entity.Attendance;
import cn.wy.service.IAttendanceService;

import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
public class AttendanceServiceImpl implements IAttendanceService {
    private IAttendanceDAO dao;
    public List<Attendance> findall() {
        return dao.findall();
    }

    public IAttendanceDAO getDao() {

        return dao;
    }

    public void setDao(IAttendanceDAO dao) {
        this.dao = dao;
    }
}
