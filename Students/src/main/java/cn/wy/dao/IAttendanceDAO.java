package cn.wy.dao;

import cn.wy.entity.Attendance;

import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
public interface IAttendanceDAO {
    public List<Attendance> findall();
}
