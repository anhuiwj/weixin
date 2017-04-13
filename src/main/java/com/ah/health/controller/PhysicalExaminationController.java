package com.ah.health.controller;

import com.ah.health.pojo.PhysicalExamination;
import com.ah.health.service.PhysicalExaminationService;
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
 * Created by wangjie on 2017/4/12.
 *  体检管理
 */
@Controller
@RequestMapping("/physicalExam")
public class PhysicalExaminationController {

    @Autowired
    private PhysicalExaminationService physicalExaminationService;


    @RequestMapping("/index")
    public String index(){
        return "health/physicalexam/list";
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
            physicalExaminationService.findAll(pager);
        }
        response.setData(pager);
        return response;
    }

    @RequestMapping("/add")
    public String add(Model model, String id){
        model.addAttribute("physicalExam",physicalExaminationService.get(id));
        return "health/physicalexam/add";
    }

    @RequestMapping("/read")
    public String read(Model model, String id){
        model.addAttribute("physicalExam",physicalExaminationService.get(id));
        return "health/physicalexam/read";
    }

    @RequestMapping("/getUserInfo")
    @ResponseBody
    public TUser getUserInfo(String userCode){
        return physicalExaminationService.getUserInfo(userCode);
    }

    /**
     * 新增保存
     * @param
     * @return
     */
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public JsonResponseEntity save(PhysicalExamination physicalExamination){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            physicalExaminationService.save(physicalExamination);
            response.setMsg(CommonUtil.ADD_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.ADD_ERROR);
        }
        return response;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JsonResponseEntity delete(String id ){
        JsonResponseEntity response = new JsonResponseEntity();
        try {
            physicalExaminationService.delete(id);
            response.setMsg(CommonUtil.DEL_SUCCESS);
            response.setCode(CommonUtil.SUCCESS_CODE);
        }catch (Exception e){
            e.printStackTrace();
            response.setMsg(CommonUtil.DEL_ERROR);
        }
        return response;
    }
}
