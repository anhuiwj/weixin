package com.ah.weixin.service.Impl;

import com.ah.weixin.mapper.TUserMapper;
import com.ah.weixin.pojo.TUser;
import com.ah.weixin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
