package cn.wy.entity;

import java.util.Date;

public class Studentattendance {
    private Integer studentattendanceid;

    private Integer studentid;

    private Date attendancetime;

    private Integer attendanceid;

    public Integer getStudentattendanceid() {
        return studentattendanceid;
    }

    public void setStudentattendanceid(Integer studentattendanceid) {
        this.studentattendanceid = studentattendanceid;
    }

    public Integer getStudentid() {
        return studentid;
    }

    public void setStudentid(Integer studentid) {
        this.studentid = studentid;
    }

    public Date getAttendancetime() {
        return attendancetime;
    }

    public void setAttendancetime(Date attendancetime) {
        this.attendancetime = attendancetime;
    }

    public Integer getAttendanceid() {
        return attendanceid;
    }

    public void setAttendanceid(Integer attendanceid) {
        this.attendanceid = attendanceid;
    }
}