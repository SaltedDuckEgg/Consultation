package cn.wy.entity;

public class Classes {
    private Integer classesid;

    private String classesname;

    public Integer getClassesid() {
        return classesid;
    }

    public void setClassesid(Integer classesid) {
        this.classesid = classesid;
    }

    public String getClassesname() {
        return classesname;
    }

    public void setClassesname(String classesname) {
        this.classesname = classesname == null ? null : classesname.trim();
    }
}