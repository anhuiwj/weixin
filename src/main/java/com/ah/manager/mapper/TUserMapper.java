package com.ah.manager.mapper;

import com.ah.manager.pojo.TUser;

import java.util.List;
import java.util.Map;

public interface TUserMapper {

    List<TUser> findAll(Map<String,Object> map);


    List<TUser> findStudent(Map<String,Object> map);

    int save(TUser user);

    TUser findByUserCode(String userCode);

    TUser findById(String id);

    int update(TUser user);

    int delete(String id);

    List<TUser> findUsers();

    int updateUser(TUser user);

    /**
     * 查询不同角色用户
     * @param map
     * @return
     */
    List<TUser> findByRole(Map<String,Object> map);
}