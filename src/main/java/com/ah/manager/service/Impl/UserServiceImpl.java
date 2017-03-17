package com.ah.manager.service.Impl;

import com.ah.manager.mapper.TUserMapper;
import com.ah.manager.pojo.TUser;
import com.ah.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by wangjie on 16/11/29.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private TUserMapper userMapper;

    public List<TUser> findUser() {
        return userMapper.selectByExample(null);
    }

    public TUser findByName(String userName) {
        TUser user = new TUser();
        user.setUsername(userName);
        return userMapper.selectByPrimaryKey(user);
    }

    @Override
    public TUser findById(String userid) {
        TUser user = new TUser();
        if(!StringUtils.isEmpty(userid)){
            user.setUsername(userid);
            user = userMapper.selectByPrimaryKey(user);
        }

        return user;
    }
}
