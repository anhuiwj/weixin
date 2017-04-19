package com.ah.health.service.Impl;

import com.ah.health.service.StudentService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.mapper.TUserMapper;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wangjie on 2017/4/18.
 */
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private TUserMapper userMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        if(UserUtils.getRole() != CommonUtils.ROLE_STUDENT){
            param.put("roleId",CommonUtils.STUDENT_ID);
        }
        pager.setExhibitDatas(userMapper.findStudent(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }
}
