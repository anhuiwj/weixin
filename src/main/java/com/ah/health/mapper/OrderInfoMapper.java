package com.ah.health.mapper;

import com.ah.health.pojo.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface OrderInfoMapper {

    List<OrderInfo> findAll(Map search);

    int save(OrderInfo orderInfo);

    int update(OrderInfo orderInfo);

    OrderInfo get(String id);

    void delete(String id);

    void refusevisit(OrderInfo orderInfo);
}