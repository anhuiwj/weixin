package com.ah.manager.util;

import com.ah.manager.pojo.SysXDict;
import com.ah.manager.service.SysXDictService;
import com.google.gson.Gson;
import org.apache.commons.lang3.StringUtils;

import java.util.*;

/**
 * Created by xuguobing on 2016/11/11 0011.
 */
public class FnsUtils {
    public static Boolean contains(Map<String, Object> map, String key) {
        if (map == null || StringUtils.isBlank(key)) {
            return false;
        }
        return map.containsKey(key);
    }

    public static Boolean contains(List<String> list, String o) {
        if (list == null || list.size() == 0 || o == null || "".equals(o.trim())) {
            return false;
        }
        for (String t : list) {
            if (t != null && t.trim().equals(o.trim())) {
                return true;
            }
        }
        return false;
    }
    public static List<SysXDict> getDictById(String id){
        SysXDictService  sysXDictService = SpringContextHolder.getBean(SysXDictService.class);
        return sysXDictService.findById(id);
    }

    public static SysXDict getDictByCode(String id,String code){
        SysXDictService  sysXDictService = SpringContextHolder.getBean(SysXDictService.class);
        return sysXDictService.findByCode(id,code);
    }

    /**
     * 根据业务字典取对应的json格式
     * @param id
     * @return
     */
    public static String getDictToJSON(String id){
        SysXDictService  sysXDictService = SpringContextHolder.getBean(SysXDictService.class);
        List<SysXDict>  sysXDicts =  sysXDictService.findById(id);
        Map<String,String> map = new HashMap<>();
        for(SysXDict sysXDict:sysXDicts){
            map.put(sysXDict.getCode(),sysXDict.getName());
        }
        return new Gson().toJson(map).toString();
    }
}
