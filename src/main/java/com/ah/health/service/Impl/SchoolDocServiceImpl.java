package com.ah.health.service.Impl;

import com.ah.health.service.SchoolDocService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.mapper.TUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wangjie on 2017/4/19.
 */
@Service
public class SchoolDocServiceImpl implements SchoolDocService {

    @Autowired
    private TUserMapper userMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        param.put("roleId",CommonUtils.DOCTOR_ID);

        pager.setExhibitDatas(userMapper.findByRole(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }
}
