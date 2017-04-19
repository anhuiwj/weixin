package com.ah.health.controller;

import com.ah.health.pojo.Question;
import com.ah.health.service.QuestionService;
import com.ah.manager.common.page.model.Pager;
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
 * Created by wangjie on 2017/4/17.
 */
@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping("/index")
    public String index(){
        return "health/question/topic";
    }

    @RequestMapping("/save")
    @ResponseBody
    public JsonResponseEntity save(Question question){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            questionService.save(question);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }

    @RequestMapping("/list")
    public String index(Model model){
        return "health/question/list";
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
            questionService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/read")
    public String read(Model model,String id){
        model.addAttribute("question",questionService.get(id));
        model.addAttribute("role",UserUtils.getRole());
        return "health/question/read";
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JsonResponseEntity delete(String id ){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            questionService.delete(id);
            response.setMsg(CommonUtil.DEL_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }


    @RequestMapping("/updateSuggetion")
    @ResponseBody
    public JsonResponseEntity updateSuggetion(Question question){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            questionService.update(question);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }

}
