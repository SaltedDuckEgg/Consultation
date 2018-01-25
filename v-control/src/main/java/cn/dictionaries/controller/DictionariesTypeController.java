package cn.dictionaries.controller;

import cn.dictionaries.client.api.IDictionariescontentService;
import cn.dictionaries.client.model.DicType;
import cn.dictionaries.core.model.DictionariesType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 17921 on 2018/1/19.
 */
@Controller
public class DictionariesTypeController {

    @Resource(name = "dictionariescontent")
    private IDictionariescontentService dictionariescontentService;


    @RequestMapping("/getdictionariesList")
    public String getdictionariesList(Model model){
        List<DictionariesType> dicList = dictionariescontentService.getDicList();
        model.addAttribute("dicList",dicList);
        return "/dictionariesType.jsp";
    }

    @RequestMapping("/getDicbytype")
    @ResponseBody
    public Object getDicbytype(String typename){
        System.out.println(typename+"=====");
        List<DictionariesType> dicBytypename = dictionariescontentService.getDicBytypename(typename);
        for (DictionariesType item:dicBytypename) {
            System.out.println(item.getTypecontent());

        }
        return dicBytypename;
    }

    @RequestMapping("/delDic")
    @ResponseBody
    public boolean delDic(int id){
        System.out.println(id+"-------");
        int i = dictionariescontentService.delDic(id);
        boolean bool=false;
        if (i>0){
            bool=true;
        }
        return bool;

    }
    @RequestMapping("/addDic")
    @ResponseBody
    public boolean addDic(DicType dicType){
        int i = dictionariescontentService.addDic(dicType);
        boolean bool=false;
        if (i>0){
            bool=true;
        }
        return bool;
    }

    @RequestMapping("/getDicTypebyid")
    @ResponseBody
    public Object getDicTypebyid(int id){
        System.out.println(id+"ididid");
        DictionariesType dicTypebyid = dictionariescontentService.getDicTypebyid(id);
        System.out.println(dicTypebyid.getTypecontent()+"++++++++++");
        return dicTypebyid;
    }

    @RequestMapping("/updateDic")
    @ResponseBody
    public boolean upDicType(DicType dicType){
        int i = dictionariescontentService.updateDicType(dicType);
        boolean bool=false;
        if (i>0){
            bool=true;
        }
        return bool;
    }


}
