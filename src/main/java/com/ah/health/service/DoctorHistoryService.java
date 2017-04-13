package com.ah.health.service;

import com.ah.health.pojo.DoctorHistory;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/13.
 */
public interface DoctorHistoryService {
    /**
     *查询所有学生体能测试数据
     *
     */
    void findAll(Pager pager);

    DoctorHistory get(String id);

    void save(DoctorHistory doctorHistory);

    void delete(String id);

}
