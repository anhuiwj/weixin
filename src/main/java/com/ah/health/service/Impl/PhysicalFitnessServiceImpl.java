package com.ah.health.service.Impl;

import com.ah.health.mapper.PhysicalFitnessTestMapper;
import com.ah.health.pojo.PhysicalFitnessTest;
import com.ah.health.service.PhysicalFitnessService;
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
 * Created by wangjie on 2017/4/13.
 */
@Service
public class PhysicalFitnessServiceImpl implements PhysicalFitnessService {

    @Autowired
    private PhysicalFitnessTestMapper physicalFitnessTestMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        /**
         * 如果是学生角色查看自己的
         */
        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("roleId",UserUtils.getCurrentUser().getRole().getId());
            param.put("id",UserUtils.getCurrentUser().getId());
        }
        pager.setExhibitDatas(physicalFitnessTestMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public PhysicalFitnessTest get(String id) {
        return physicalFitnessTestMapper.get(id);
    }

    @Override
    public void save(PhysicalFitnessTest physicalFitnessTest) {
        if(StringUtils.isEmpty(physicalFitnessTest.getId())){
            physicalFitnessTest.setId(IdGen.uuid());
            physicalFitnessTest.setDelFlag("0");
            physicalFitnessTest.setTestDate(new Date());
            physicalFitnessTestMapper.save(physicalFitnessTest);
        }else{
            physicalFitnessTestMapper.update(physicalFitnessTest);
        }
    }

    @Override
    public void delete(String id) {
        physicalFitnessTestMapper.delete(id);
    }
}
