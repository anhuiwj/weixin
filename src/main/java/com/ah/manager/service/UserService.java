package com.ah.manager.service;

import com.ah.manager.pojo.TUser;

import java.util.List;

/**
 * Created by wangjie on 16/11/29.
 */
public interface UserService {
    /**
     *查询所有用户
     */
    List<TUser> findUser();

    TUser findByName(String userName);

    TUser findById(String userid);
}
