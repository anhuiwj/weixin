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
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by wangjie on 2017/5/7.
 * 课程信息
 */
@Controller
@RequestMapping("/curriculumInfo")
public class CurriculumInfoController {

    @Autowired
    private CurriculumInfoService curriculumInfoService;

    @RequestMapping("/index")
    public String index(Model model) {
        return "company/curriculumInfo/list";
    }

    @RequestMapping("/add")
    public String add(String id,Model model) {
        model.addAttribute("curriculumInfo",curriculumInfoService.get(id));
        return "company/curriculumInfo/add";
    }


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

    @RequestMapping("/save")
    @ResponseBody
    public JsonResponseEntity save(CurriculumInfo curriculumInfo,@RequestParam(value = "file",required = false) MultipartFile file,HttpServletRequest request){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            curriculumInfoService.save(curriculumInfo,file,request);
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
            curriculumInfoService.delete(id);
            response.setCode(200);
            response.setMsg(CommonUtil.DEL_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }

    @RequestMapping("/read")
    public String read(String id,Model model){
        model.addAttribute("curriculumInfo",curriculumInfoService.get(id));
        return "company/curriculumInfo/read";
    }
}
