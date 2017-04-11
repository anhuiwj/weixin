package com.ah.health.controller;

import com.ah.health.service.PersonalService;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.pojo.TUser;
import com.ah.manager.response.JsonResponseEntity;
import com.ah.manager.util.CommonUtil;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by wangjie on 2017/4/11.
 */
@Controller
@RequestMapping("/personal")
public class PersonalController {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("/index")
    public String index(Model model){
        return "health/user/userlist";
    }


    @RequestMapping("/getData")
    @ResponseBody
    public JsonResponseEntity<Pager> getData(@RequestParam(required = false) String dtGridPager){
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
//            searchParam.put("user",getCurrentUser().getId());
            pager.setParameters(searchParam);
            personalService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/add")
    public String add(Model model,String id){
        model.addAttribute(personalService.findById(id));
        return "health/user/addUser";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public JsonResponseEntity save(TUser tUser){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            personalService.save(tUser);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }
}
