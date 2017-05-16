package com.ah.company.controller;

import com.ah.company.pojo.CurriculumInfo;
import com.ah.company.service.CurriculumInfoService;
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
 * Created by wangjie on 2017/5/15.
 * 课程分配
 */
@Controller
@RequestMapping("/curriculumAllocation")
public class CurriculumAllocationController {
    @Autowired
    private CurriculumInfoService curriculumInfoService;

    @RequestMapping("/index")
    public String index(Model model) {
        return "company/curriculumAllocation/list";
    }

    @RequestMapping("/index2")
    public String index2(Model model) {
        return "company/curriculumAllocation/list2";
    }

    /**
     * 班级列表
     * @param dtGridPager
     * @return
     */
    @RequestMapping("/getData")
    @ResponseBody
    public JsonResponseEntity<Pager> getData(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            curriculumInfoService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    /**
     * 课程列表
     * @param dtGridPager
     * @return
     */
    @RequestMapping("/getData2")
    @ResponseBody
    public JsonResponseEntity<Pager> getData2(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            curriculumInfoService.findCurriculumInfoByClass(pager);
        }
        response.setData(pager);
        return response;
    }

    /**
     * 个人课程列表
     * @param dtGridPager
     * @return
     */
    @RequestMapping("/getData3")
    @ResponseBody
    public JsonResponseEntity<Pager> getData3(@RequestParam(required = false) String dtGridPager) {
        JsonResponseEntity<Pager> response = new JsonResponseEntity<>();
        Pager pager = new Gson().fromJson(dtGridPager, Pager.class);
        if (pager != null) {
            Map<String, Object> searchParam = pager.getParameters(); //查询参数
            pager.setParameters(searchParam);
            curriculumInfoService.findPersonalCurrculum(pager);
        }
        response.setData(pager);
        return response;
    }

    /**
     * 增加班级课程
     * @param classId
     * @param model
     * @return
     */
    @RequestMapping("/addCurriculum")
    public String addCurriculum(String classId,Model model){
        model.addAttribute(curriculumInfoService.findCurriculems(classId));
        model.addAttribute("classId",classId);
        return "company/curriculumAllocation/addCurriculum";
    }

    @RequestMapping("/save")
    @ResponseBody
    public JsonResponseEntity save(CurriculumInfo curriculumInfo){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            curriculumInfoService.saveClassCurrculum(curriculumInfo);
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
    public JsonResponseEntity delete(String mustcurriculumId){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            curriculumInfoService.deleteClassCurrculum(mustcurriculumId);
            response.setCode(200);
            response.setMsg(CommonUtil.DEL_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }
}
