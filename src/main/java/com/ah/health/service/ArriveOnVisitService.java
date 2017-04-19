package com.ah.health.service;

import com.ah.health.pojo.ArriveOnVisit;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/14.
 */
public interface ArriveOnVisitService {
    /**
     *查询所有学生体能测试数据
     *
     */
    void findAll(Pager pager);

    void save(ArriveOnVisit arriveOnVisit);

    void delete(String id);

    ArriveOnVisit detail(String id);
}
