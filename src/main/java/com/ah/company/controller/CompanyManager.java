package com.ah.company.controller;

import com.ah.manager.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangjie on 2017/3/16.
 */
@Controller
@RequestMapping("/company")
public class CompanyManager extends BaseController{

    @RequestMapping("/index")
    public String index(){
        return "companyManager/companyIndex";
    }

    @RequestMapping("add")
    public String add(){
        return "companyManager/companyAdd";
    }

}
