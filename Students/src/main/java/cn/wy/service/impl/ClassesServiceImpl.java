package cn.wy.service.impl;

import cn.wy.dao.IClassesDAO;
import cn.wy.entity.Classes;
import cn.wy.service.IClassesService;

import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
public class ClassesServiceImpl implements IClassesService {
    private IClassesDAO dao;
    public List<Classes> findall() {
        return dao.findall();
    }

    public IClassesDAO getDao() {
        return dao;
    }

    public void setDao(IClassesDAO dao) {
        this.dao = dao;
    }
}
