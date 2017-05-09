package com.ah.company.controller;

import com.ah.company.pojo.SysOffice;
import com.ah.company.service.SysOfficeService;
import com.ah.manager.response.JsonResponseEntity;
import com.ah.manager.util.CommonUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by wangjie on 2017/5/2.
 */
@Controller
@RequestMapping("/sysOffice")
public class SysOfficeController {

    @Autowired
    private SysOfficeService sysOfficeService;

    @RequestMapping("/index")
    public String index(Model model){
        model.addAttribute(sysOfficeService.findAll());
        return "sys/sysOfficeList";
    }

    @RequestMapping("/form")
    public String form(String pid,String id,Model model){
        List<SysOffice> list = sysOfficeService.findAll();
        model.addAttribute("list",list);
        model.addAttribute("showRoot",true);
        if (StringUtils.isNotBlank(id)) {
            model.addAttribute(sysOfficeService.findById(id));
        } else if (StringUtils.isNotBlank(pid)) {
            SysOffice menu = new SysOffice();
            menu.setParentId(pid);
            model.addAttribute(menu);
        }

        return "sys/sysOfficeForm";
    }
    @RequestMapping("/save")
    @ResponseBody
    public JsonResponseEntity save(SysOffice sysOffice){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            sysOfficeService.save(sysOffice);
            response.setCode(200);
            response.setMsg(CommonUtil.ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }
    @RequestMapping("/delete")
    @ResponseBody
    public JsonResponseEntity delete(String  id){
        return sysOfficeService.delete(id);
    }
}
