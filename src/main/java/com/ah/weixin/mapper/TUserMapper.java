package com.ah.weixin.mapper;

import com.ah.weixin.pojo.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TUserMapper {
    int countByExample(TUser example);

    int deleteByExample(TUser example);

    int deleteByPrimaryKey(Integer id);

    int insert(TUser record);

    int insertSelective(TUser record);

    List<TUser> selectByExample(TUser example);

    TUser selectByPrimaryKey(TUser user);

    int updateByExampleSelective(@Param("record") TUser record, @Param("example") TUser example);

    int updateByExample(@Param("record") TUser record, @Param("example") TUser example);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);
}