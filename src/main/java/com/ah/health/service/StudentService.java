package com.ah.health.service;

import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/18.
 */
public interface StudentService {
    /**
     *查询所有用户
     */
    void findAll(Pager pager);
}
