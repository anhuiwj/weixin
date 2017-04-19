package com.ah.health.controller;

import com.ah.health.base.BaseController;
import com.ah.health.pojo.OrderInfo;
import com.ah.health.service.OrderInfoService;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.response.JsonResponseEntity;
import com.ah.manager.util.CommonUtil;
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
@RequestMapping("/orderInfo")
public class OrderInfoController extends BaseController{

    @Autowired
    private OrderInfoService orderInfoService;

    @RequestMapping("/index")
    public String index(Model model){
        return "health/orderInfo/list";
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
            pager.setParameters(searchParam);
            orderInfoService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/order")
    @ResponseBody
    public JsonResponseEntity save(OrderInfo orderInfo){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            orderInfoService.save(orderInfo);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }

    @RequestMapping("/read")
    public String read(String id,Model model){
        model.addAttribute("order",orderInfoService.get(id));
        return "health/orderInfo/orderDetail";
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JsonResponseEntity delete(String id ){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            orderInfoService.delete(id);
            response.setMsg(CommonUtil.DEL_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }

    @RequestMapping("/refusevisit")
    @ResponseBody
    public JsonResponseEntity refusevisit(String id ){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            orderInfoService.refusevisit(id);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }
}
