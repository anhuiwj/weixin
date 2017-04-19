package com.ah.health.controller;

import com.ah.health.service.SchoolDocService;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.response.JsonResponseEntity;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by wangjie on 2017/4/19.
 */
@Controller
@RequestMapping("/schoolDoc")
public class SchoolDocController {

    @Autowired
    private SchoolDocService schoolDocService;


    @RequestMapping("/index")
    public String index(Model model){
        return "health/studentDoc/userlist";
    }


    /**
     * 列表数据
     * @param dtGridPager
     * @return
     */
    @RequestMapping("/getData")
    @ResponseBody
    public JsonResponseEntity<Pager> getData(@RequestParam(required = false) String dtGridPager){
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
//            searchParam.put("user",getCurrentUser().getId());
            pager.setParameters(searchParam);
            schoolDocService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }
}
