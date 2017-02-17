package com.ah.manager.controller;

import com.ah.manager.pojo.SysMenu;
import com.ah.manager.service.SysMenuService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by wangjie on 17/1/9.
 */
@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController{

    @Autowired
    private SysMenuService sysMenuService;

    @RequestMapping("/index")
    public String index(Model model){
        model.addAttribute(sysMenuService.findMenusByTree());
        return "sys/menuList";
    }

    @RequestMapping("/form")
    public String form(String pid,String id,Model model){
        List<SysMenu> list = sysMenuService.findMenusByTree();
        model.addAttribute("list",list);
        model.addAttribute("showRoot",true);
        if (StringUtils.isNotBlank(id)) {
            model.addAttribute(sysMenuService.findById(id));
        } else if (StringUtils.isNotBlank(pid)) {
            SysMenu menu = new SysMenu();
            menu.setPid(pid);
            model.addAttribute(menu);
        }

        return "sys/menuForm";
    }
}
