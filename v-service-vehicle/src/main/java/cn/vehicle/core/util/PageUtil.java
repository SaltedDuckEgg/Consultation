package cn.vehicle.core.util;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Happy on 2017-11-11.
 * 分页工具类
 */
public class PageUtil<T> implements Serializable {
     private Integer pageindex;//当前页码
     private Integer pagesize;//单页记录数
    private Integer pageCount;//总记录数
    private Integer totalPages;//总页数
     private List<T>  list;//集合数据

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

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(Integer totalPages) {
        this.totalPages = totalPages;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
