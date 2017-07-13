package com.ah.company.controller;

import com.ah.company.service.TmPagerService;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.response.JsonResponseEntity;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by wangjie on 2017/5/16.
 */
@Controller
@RequestMapping("/welcome")
public class WelcomeController {

    @Autowired
    private TmPagerService tmPagerService;

    @RequestMapping("/index")
    public String index(){
        return "welcome";
    }

    @RequestMapping("/getData")
    @ResponseBody
    public JsonResponseEntity<Pager> getData3(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            tmPagerService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }
}
