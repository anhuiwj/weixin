package com.ah.company.controller;

import com.ah.company.pojo.ClassInfo;
import com.ah.company.service.ClassInfoService;
import com.ah.company.service.Impl.ClassInfoServiceImpl;
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
 * Created by wangjie on 2017/5/4.
 * 班级管理
 */
@Controller
@RequestMapping("/classInfo")
public class ClassInfoController {

    @Autowired
    private ClassInfoService classInfoService;

    @RequestMapping("/index")
    public String index(Model model) {
        return "company/classInfo";
    }


    @RequestMapping("/getData")
    @ResponseBody
    public JsonResponseEntity<Pager> getData(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            classInfoService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/getData2")
    @ResponseBody
    public JsonResponseEntity<Pager> getData2(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            classInfoService.findAll2(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/save")
    @ResponseBody
    public JsonResponseEntity save(ClassInfo classInfo){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            classInfoService.save(classInfo);
            response.setCode(200);
            response.setMsg(CommonUtil.ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }

    @RequestMapping("/saveClassUser")
    @ResponseBody
    public JsonResponseEntity saveClassUser(ClassInfo classInfo){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            classInfoService.saveClassUser(classInfo);
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
    public JsonResponseEntity delete(String id){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            classInfoService.delete(id);
            response.setCode(200);
            response.setMsg(CommonUtil.DEL_SUCCESS);
        }catch (ClassInfoServiceImpl.MoreException e){
            response.setMsg("该班级有成员,不可删除");
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public JsonResponseEntity deleteUser(String id){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            classInfoService.deleteUser(id);
            response.setCode(200);
            response.setMsg(CommonUtil.DEL_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }

    @RequestMapping("/addUser")
    public String addUser(String classId, Model model) {
        model.addAttribute("users", classInfoService.findUsers());
        model.addAttribute("classId",classId);

        return "company/classAddUser";
    }

    @RequestMapping("/add")
    public String add(String id, Model model) {
        model.addAttribute("classInfo", classInfoService.get(id));
        return "company/addclass";
    }
}