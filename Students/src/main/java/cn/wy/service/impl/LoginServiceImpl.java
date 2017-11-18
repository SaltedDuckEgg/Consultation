package cn.wy.service.impl;

import cn.wy.dao.ILoginDAO;
import cn.wy.entity.Login;
import cn.wy.service.ILoginService;

/**
 * Created by 17921 on 2017/10/28.
 */
public class LoginServiceImpl implements ILoginService {
    private ILoginDAO dao;
    public int login(Login login) {
        return dao.login(login);
    }

    public ILoginDAO getDao() {
        return dao;
    }

    public void setDao(ILoginDAO dao) {
        this.dao = dao;
    }
}
