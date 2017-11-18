package cn.smbms.controller.convert;

import org.springframework.beans.TypeMismatchException;
import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/11/5.
 */
public class MyConvert implements Converter<String,Date> {
    public Date convert(String str) {
        SimpleDateFormat sdf=getDate(str);
        try {
            Date date = sdf.parse(str);
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    private SimpleDateFormat getDate(String str) {
        SimpleDateFormat sdf=null;
        if(Pattern.matches("^\\d{4}-\\d{2}-\\d{2}$",str)){
            sdf=new SimpleDateFormat("yyyy-MM-dd");
        }else  if(Pattern.matches("^\\d{4}/\\d{2}/\\d{2}$",str)){
            sdf=new SimpleDateFormat("yyyy/MM/dd");
        }else  if(Pattern.matches("^\\d{4}年\\d{2}月\\d{2}日$",str)){
            sdf=new SimpleDateFormat("yyyy年MM月dd日");
        }else{
            throw new TypeMismatchException("",Date.class);
        }
        return sdf;
    }
}
