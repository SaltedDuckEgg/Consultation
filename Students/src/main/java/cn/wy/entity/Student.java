package cn.wy.entity;

import java.util.Date;

public class Student {
    private Integer studentid;

    private String studentname;

    private Integer classesid;

    private Date studentcatetime;

    public Integer getStudentid() {
        return studentid;
    }

    public void setStudentid(Integer studentid) {
        this.studentid = studentid;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname == null ? null : studentname.trim();
    }

    public Integer getClassesid() {
        return classesid;
    }

    public void setClassesid(Integer classesid) {
        this.classesid = classesid;
    }

    public Date getStudentcatetime() {
        return studentcatetime;
    }

    public void setStudentcatetime(Date studentcatetime) {
        this.studentcatetime = studentcatetime;
    }
}