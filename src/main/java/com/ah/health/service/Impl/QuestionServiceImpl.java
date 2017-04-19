package com.ah.health.service.Impl;

import com.ah.health.mapper.QuestionMapper;
import com.ah.health.pojo.Question;
import com.ah.health.service.QuestionService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * Created by wangjie on 2017/4/18.
 */
@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionMapper questionMapper;

    @Override
    public void save(Question question) {
        if(StringUtils.isEmpty(question.getId())){
            question.setId(IdGen.uuid());
            question.setStudentId(UserUtils.getCurrentUser().getId());
            question.setCreateDate(new Date());
            question.setDelFlag(CommonUtils.NO_DEL_FLAG);
            questionMapper.save(question);
        }
    }

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        /**
         * 如果是学生角色查看自己的
         *
         * 如果是心理医生查看预约了自己的学生
         */
        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("id",UserUtils.getCurrentUser().getId());
        }else if(UserUtils.getRole() == CommonUtils.ROLE_XINLI_DOCTOR){
        }

        pager.setExhibitDatas(questionMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void update(Question question) {
        questionMapper.updateSuggestion(question);
    }

    @Override
    public void delete(String id) {
        questionMapper.delete(id);
    }

    @Override
    public Question get(String id) {
        return questionMapper.get(id);
    }
}
