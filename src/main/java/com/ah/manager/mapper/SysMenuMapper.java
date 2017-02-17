package com.ah.manager.mapper;

import com.ah.manager.pojo.SysMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysMenuMapper {
//    int countByExample(SysMenu example);
//
//    int deleteByExample(SysMenu example);
//
//    int deleteByPrimaryKey(String id);
//
//    int insert(SysMenu record);
//
//    int insertSelective(SysMenu record);
//
//
//
//    SysMenu selectByPrimaryKey(String id);
//
//    int updateByExampleSelective(@Param("record") SysMenu record, @Param("example") SysMenu example);
//
//    int updateByExample(@Param("record") SysMenu record, @Param("example") SysMenu example);
//
//    int updateByPrimaryKeySelective(SysMenu record);
//
//    int updateByPrimaryKey(SysMenu record);
    List<SysMenu> findAll();
    List<SysMenu> findByUserId(String id);
    List<SysMenu> findMenu();

    SysMenu findById(String id);
}