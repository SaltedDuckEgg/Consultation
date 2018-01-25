package cn.dictionaries.client.api;

import cn.dictionaries.client.model.DicType;
import cn.dictionaries.core.model.DictionariesType;

import java.util.List;

/**
 * Created by 17921 on 2018/1/17.
 */
public interface IDictionariescontentService {
    /**
     * 查询所有的字典类型
     * @return
     */
    public List<DictionariesType> getDicList();

    /**
     * 根据类型名称查询类型
     * @param typename
     * @return
     */
    public List<DictionariesType> getDicBytypename(String typename);

    /**
     * 添加字典类型
     * @param dicType
     * @return
     */
    public int addDic(DicType dicType);

    /**
     * 删除字典类型
     * @param id
     * @return
     */
    public int delDic(int id);

    /**
     * 根据id查询Dic
     * @param id
     * @return
     */
    public DictionariesType getDicTypebyid(int id);

    /**
     * 修改字典类型
     * @param dicType
     * @return
     */
    public int updateDicType(DicType dicType);
}
