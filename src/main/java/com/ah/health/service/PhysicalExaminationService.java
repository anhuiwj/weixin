package com.ah.health.service;

import com.ah.health.pojo.PhysicalExamination;
import com.ah.health.vo.PhysicalExaminationVo;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.pojo.TUser;

/**
 * Created by wangjie on 2017/4/12.
 */
public interface PhysicalExaminationService {
    /**
     *查询所有学生体检信息
     *
     */
    void findAll(Pager pager);

    PhysicalExaminationVo get(String id);

    TUser getUserInfo(String userCcode);

    void save(PhysicalExamination physicalExamination);

    void delete(String id);
}
