package cn.wy.servlet;

import cn.wy.entity.Attendance;
import cn.wy.entity.Classes;
import cn.wy.entity.Student;
import cn.wy.service.IAttendanceService;
import cn.wy.service.IClassesService;
import cn.wy.service.ILoginService;
import cn.wy.service.IStudentService;
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
@WebServlet(urlPatterns = {"/ClassesServlet"},name = "classes")
public class ClassesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        WebApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
        String action = request.getParameter("action");
        if("frist".equals(action)){
            IClassesService service=(IClassesService)ac.getBean("classesService");
            List<Classes> list = service.findall();
            request.setAttribute("list",list);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else if("list".equals(action)){
            String temp = request.getParameter("id");
            IAttendanceService attService=(IAttendanceService)ac.getBean("AttService");
            List<Attendance> attlist = attService.findall();
            request.setAttribute("attlist",attlist);
            for(Attendance item:attlist ){
                System.out.println(item.getAttendancename());

            }
            IStudentService stuService=(IStudentService)ac.getBean("stuService");
            int id=0;
            if(temp!=null){
                id=Integer.parseInt(temp);
            }
            List<Student> stulist = stuService.findall(id);
            request.setAttribute("stulist",stulist);
            request.setAttribute("id",temp);
            request.getRequestDispatcher("/index02.jsp").forward(request,response);
        }else if("add".equals(action)){
            String temp = request.getParameter("id");
            IStudentService stuService=(IStudentService)ac.getBean("stuService");
            int id=0;
            if(temp!=null){
                id=Integer.parseInt(temp);
            }
            List<Student> stulist = stuService.findall(id);
            for (Student item:stulist){
                String num=item.getStudentid().toString();
                String re = request.getParameter(num);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
