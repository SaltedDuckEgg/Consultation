package cn.dictionaries.client.model;

import java.io.Serializable;

/**
 * Created by 17921 on 2018/1/18.
 */
public class DicType  implements Serializable {
    private Integer id;//类型编号
    private String typename;//类型名称
    private String typecontent;//描述


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getTypecontent() {
        return typecontent;
    }

    public void setTypecontent(String typecontent) {
        this.typecontent = typecontent;
    }
}
