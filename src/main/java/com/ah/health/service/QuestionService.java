package com.ah.health.service;

import com.ah.health.pojo.Question;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/18.
 */
public interface QuestionService {
    void save(Question question);

    /**
     *查询所有用户
     */
    void findAll(Pager pager);

    void update(Question question);

    void delete(String id);

    Question get(String id);
}
