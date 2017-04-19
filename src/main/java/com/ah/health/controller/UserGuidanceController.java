package com.ah.health.controller;

import com.ah.health.pojo.OrderInfo;
import com.ah.health.service.OrderInfoService;
import com.ah.health.service.PersonalService;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.pojo.TUser;
import com.ah.manager.response.JsonResponseEntity;
import com.ah.manager.util.CommonUtil;
import com.ah.manager.util.UserUtils;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by wangjie on 2017/4/14.
 */
@Controller
@RequestMapping("/userGuidance")
public class UserGuidanceController {

    @Autowired
    private PersonalService personalService;

    @Autowired
    private OrderInfoService orderInfoService;

    @RequestMapping("/index")
    public String index(Model model){
        return "health/userGuidance/userlist";
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
            personalService.findByRole(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/read")
    public String read(String id,Model model){
        model.addAttribute(personalService.findById(id));
        return "health/userGuidance/userDetail";
    }

    @RequestMapping("/add")
    public String add(String id,Model model,String guidanceId){
        model.addAttribute("guidanceId",guidanceId);
        return "health/orderInfo/add";
    }

}
