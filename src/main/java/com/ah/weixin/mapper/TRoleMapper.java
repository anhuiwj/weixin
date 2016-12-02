package com.ah.weixin.mapper;

import com.ah.weixin.pojo.TRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TRoleMapper {
    int countByExample(TRole example);

    int deleteByExample(TRole example);

    int insert(TRole record);

    int insertSelective(TRole record);

    List<TRole> findAll(Map search);

    int updateByExampleSelective(@Param("record") TRole record, @Param("example") TRole example);

    int updateByExample(@Param("record") TRole record, @Param("example") TRole example);
}