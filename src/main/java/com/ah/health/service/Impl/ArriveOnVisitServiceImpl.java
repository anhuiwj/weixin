package com.ah.health.service.Impl;

import com.ah.health.mapper.ArriveOnVisitMapper;
import com.ah.health.mapper.OrderInfoMapper;
import com.ah.health.pojo.ArriveOnVisit;
import com.ah.health.pojo.OrderInfo;
import com.ah.health.service.ArriveOnVisitService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * Created by wangjie on 2017/4/14.
 */
@Service
public class ArriveOnVisitServiceImpl implements ArriveOnVisitService {

    @Autowired
    private ArriveOnVisitMapper arriveOnVisitMapper;

    @Autowired
    private OrderInfoMapper orderInfoMapper;


    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        if(UserUtils.getRole() == CommonUtils.ROLE_XINLI_DOCTOR){
            param.put("guidanceId",UserUtils.getCurrentUser().getId());
        }else if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("userId",UserUtils.getCurrentUser().getId());
        }

        pager.setExhibitDatas(arriveOnVisitMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void save(ArriveOnVisit arriveOnVisit) {
        if(StringUtils.isEmpty(arriveOnVisit.getId())){
            arriveOnVisit.setId(IdGen.uuid());
            arriveOnVisit.setDelFlag(CommonUtils.NO_DEL_FLAG);
            arriveOnVisitMapper.save(arriveOnVisit);
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setId(arriveOnVisit.getOrderId());
            orderInfo.setOrderStatu(CommonUtils.ORDER_BUTONGYI);
            orderInfoMapper.refusevisit(orderInfo);//更新预约状态
        }
    }

    @Override
    public void delete(String id) {
        arriveOnVisitMapper.delete(id);
    }

    @Override
    public ArriveOnVisit detail(String id) {
        return arriveOnVisitMapper.detail(id);
    }
}
