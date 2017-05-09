package com.ah.company.mapper;

import com.ah.company.pojo.SysRoleOfficeKey;

public interface SysRoleOfficeMapper {
    int deleteByPrimaryKey(SysRoleOfficeKey key);

    int insert(SysRoleOfficeKey record);

    int insertSelective(SysRoleOfficeKey record);
}