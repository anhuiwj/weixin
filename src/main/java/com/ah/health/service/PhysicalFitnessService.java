package com.ah.health.service;

import com.ah.health.pojo.PhysicalFitnessTest;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/13.
 */
public interface PhysicalFitnessService {
    /**
     *查询所有学生体能测试数据
     *
     */
    void findAll(Pager pager);

    PhysicalFitnessTest get(String id);

    void save(PhysicalFitnessTest physicalFitnessTest);

    void delete(String id);

}
