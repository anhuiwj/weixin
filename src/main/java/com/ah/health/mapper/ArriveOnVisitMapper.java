package com.ah.health.mapper;

import com.ah.health.pojo.ArriveOnVisit;
import com.ah.health.pojo.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ArriveOnVisitMapper {

    List<OrderInfo> findAll(Map search);

    int save(ArriveOnVisit arriveOnVisit);

    int delete(String id);

    int update(ArriveOnVisit arriveOnVisit);

    ArriveOnVisit detail(String id);
}