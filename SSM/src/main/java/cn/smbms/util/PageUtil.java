package cn.smbms.util;

import cn.smbms.entity.UserInfo;

import java.util.List;

/**
 * Created by Happy on 2017-11-11.
 * 分页工具类
 */
public class PageUtil<T> {
     private Integer pageindex;
     private Integer pagesize;
     private Integer totalrecords;
     private Integer totalpages;
     private List<T>  list;

    public Integer getPageindex() {
        return pageindex;
    }

    public void setPageindex(Integer pageindex) {
        this.pageindex = pageindex;
    }

    public Integer getPagesize() {
        return pagesize;
    }

    public void setPagesize(Integer pagesize) {
        this.pagesize = pagesize;
    }

    public Integer getTotalrecords() {
        return totalrecords;
    }

    public void setTotalrecords(Integer totalrecords) {
        this.totalrecords = totalrecords;
    }

    public Integer getTotalpages() {
        return totalpages;
    }

    public void setTotalpages(Integer totalpages) {
        this.totalpages = totalpages;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
