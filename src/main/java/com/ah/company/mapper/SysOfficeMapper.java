package com.ah.company.mapper;

import com.ah.company.pojo.SysOffice;

import java.util.List;

public interface SysOfficeMapper {

    int save(SysOffice record);

    void delete(String id);

    int insertSelective(SysOffice record);

    SysOffice selectByPrimaryKey(String id);

    int update(SysOffice record);

    int updateByPrimaryKey(SysOffice record);

    List<SysOffice> findAll();

    SysOffice findById(String id);

    List<SysOffice> findChildren(String id);
}