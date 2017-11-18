package cn.wy.service.impl;

import cn.wy.dao.IStudentDAO;
import cn.wy.entity.Student;
import cn.wy.service.IStudentService;

import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
public class StudentServiceImpl implements IStudentService {
    private IStudentDAO dao;
    public List<Student> findall(int id) {
        return dao.findall(id);
    }

    public IStudentDAO getDao() {
        return dao;
    }

    public void setDao(IStudentDAO dao) {
        this.dao = dao;
    }
}
