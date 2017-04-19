package com.ah.health.service.Impl;

import com.ah.health.service.PersonalService;
import com.ah.health.utils.CommonUtils;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.mapper.TUserMapper;
import com.ah.manager.pojo.TUser;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.MD5Util;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by wangjie on 16/11/29.
 */
@Service
@Transactional
public class PersonalServiceImpl implements PersonalService {

    @Autowired
    private TUserMapper userMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("roleId",UserUtils.getCurrentUser().getRole().getId());
            param.put("id",UserUtils.getCurrentUser().getId());
        }else {
            param.put("id",UserUtils.getCurrentUser().getId());
        }
        pager.setExhibitDatas(userMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void save(TUser user) {
        if(StringUtils.isEmpty(user.getId())){
            user.setId(IdGen.uuid());
            user.setPassword(MD5Util.MD5(user.getPassword()));
            userMapper.save(user);
        }else {
            user.setPassword(MD5Util.MD5(user.getPassword()));
            userMapper.updateUser(user);
        }
    }

    @Override
    public TUser findByUserCode(String userCode) {
        return userMapper.findByUserCode(userCode);
    }

    @Override
    public TUser findById(String id) {
        if(StringUtils.isEmpty(id)){
            return new TUser();
        }
        return userMapper.findById(id);
    }

    @Override
    public void delete(String id) {
        userMapper.delete(id);
    }

    @Override
    public List<TUser> findUsers() {
        return userMapper.findUsers();
    }

    @Override
    public void findByRole(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        if(UserUtils.getRole() == CommonUtils.ROLE_XINLI_DOCTOR){
            param.put("roleId","8190e019798f43e782470fd1e986b85d");
        }
        pager.setExhibitDatas(userMapper.findByRole(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }
}
