package com.ah.health.service.Impl;

import com.ah.health.mapper.DoctorHistoryMapper;
import com.ah.health.pojo.DoctorHistory;
import com.ah.health.service.DoctorHistoryService;
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
public class DoctorHistoryServiceImpl implements DoctorHistoryService{

    @Autowired
    private DoctorHistoryMapper doctorHistoryMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("roleId",UserUtils.getCurrentUser().getRole().getId());
            param.put("id",UserUtils.getCurrentUser().getId());
        }
        pager.setExhibitDatas(doctorHistoryMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public DoctorHistory get(String id) {
        return doctorHistoryMapper.get(id);
    }

    @Override
    public void save(DoctorHistory doctorHistory) {
        if(StringUtils.isEmpty(doctorHistory.getId())){
            doctorHistory.setId(IdGen.uuid());
            doctorHistory.setDelFlag("0");
            doctorHistoryMapper.save(doctorHistory);
        }else {
            doctorHistoryMapper.update(doctorHistory);
        }
    }

    @Override
    public void delete(String id) {
        doctorHistoryMapper.delete(id);
    }
}
