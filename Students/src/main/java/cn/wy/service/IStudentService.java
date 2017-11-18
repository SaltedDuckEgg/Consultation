package cn.wy.service;

import cn.wy.entity.Student;

import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
public interface IStudentService {
    public List<Student> findall(int id);
}
