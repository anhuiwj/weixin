package com.ah.health.service;

import com.ah.health.pojo.OrderInfo;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/4/14.
 */
public interface OrderInfoService {
    /**
     *查询所有用户
     */
    void findAll(Pager pager);

    void save(OrderInfo orderInfo);

    /**
     * 查看预约信息
     * @param id
     * @return
     */
    OrderInfo get(String id);

    void delete(String id);

    /**
     * 拒绝预约
     * @param id
     */
    void refusevisit(String id);
}
