package com.ah.health.service.Impl;

import com.ah.health.mapper.OrderInfoMapper;
import com.ah.health.pojo.OrderInfo;
import com.ah.health.service.OrderInfoService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * Created by wangjie on 2017/4/14.
 */
@Service
public class OrderInfoServiceImpl implements OrderInfoService {

    @Autowired
    private OrderInfoMapper orderInfoMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        /**
         * 如果是学生角色查看自己的
         *
         * 如果是心理医生查看预约了自己的学生
         */
        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("id",UserUtils.getCurrentUser().getId());
        }else if(UserUtils.getRole() == CommonUtils.ROLE_XINLI_DOCTOR){
            param.put("guidanceId",UserUtils.getCurrentUser().getId());
        }

        pager.setExhibitDatas(orderInfoMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void save(OrderInfo orderInfo) {
        if(StringUtils.isEmpty(orderInfo.getId())){
            orderInfo.setId(IdGen.uuid());
            orderInfo.setDelFlag("0");
            orderInfo.setCreateDate(new Date());
            orderInfo.setStudentId(UserUtils.getCurrentUser().getId());
            orderInfo.setOrderStatu(CommonUtils.ORDER_YVYUE);
            orderInfoMapper.save(orderInfo);
        }
    }

    @Override
    public OrderInfo get(String id) {
        return orderInfoMapper.get(id);
    }

    @Override
    public void delete(String id) {
        orderInfoMapper.delete(id);
    }

    @Override
    public void refusevisit(OrderInfo orderInfo) {
        orderInfo.setOrderStatu(CommonUtils.ORDER_TONGYI);
        orderInfoMapper.refusevisit(orderInfo);
    }
}
