package cn.wy.servlet;

import cn.wy.entity.Login;
import cn.wy.service.ILoginService;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 17921 on 2017/10/28.
 */
@WebServlet(urlPatterns = {"/LoginServlet"},name = "login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        Login login=new Login();
        String logname = request.getParameter("logname");
        String pwd = request.getParameter("pwd");
        login.setLogincode(logname);
        login.setLoginpassword(pwd);
        WebApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
        ILoginService service=(ILoginService)ac.getBean("logService");
        int num = service.login(login);
        if(num>0) {
            request.getRequestDispatcher("/ClassesServlet?action=frist").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
