package cn.dictionaries.core.service;

import cn.dictionaries.client.api.IDictionariescontentService;
import cn.dictionaries.client.model.DicType;
import cn.dictionaries.core.dao.IDictionariesType;
import cn.dictionaries.core.model.DictionariesType;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 17921 on 2018/1/18.
 */
public class DictionariesServiceImpl implements IDictionariescontentService {
    @Autowired
    private IDictionariesType dictionariesType;


    public List<DictionariesType> getDicList() {
        List<DictionariesType> dicList = dictionariesType.getDicList();

        return dicList;
    }

    public List<DictionariesType> getDicBytypename(String typename) {
        System.out.println(typename+"==========");
        List<DictionariesType> dicBytypename = dictionariesType.getDicBytypename(typename);
        for (DictionariesType item: dicBytypename             ) {
            System.out.println(item.getTypename());

        }
        return dicBytypename;
    }

    public int addDic(DicType dicType) {
        int i = dictionariesType.addDic(dicType);
        return i;
    }

    public int delDic(int id) {
        int i = dictionariesType.delDic(id);
        return i;
    }

    public DictionariesType getDicTypebyid(int id) {
        DictionariesType dicTypebyid = dictionariesType.getDicTypebyid(id);
        return dicTypebyid;
    }

    public int updateDicType(DicType dicType) {
        int i = dictionariesType.updateDicType(dicType);
        return i;
    }
}
