package com.ah.manager.mapper;

import com.ah.manager.pojo.TPermission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TPermissionMapper {
    int countByExample(TPermission example);

    int deleteByExample(TPermission example);

    int insert(TPermission record);

    int insertSelective(TPermission record);

    List<TPermission> selectByExample(TPermission example);

    int updateByExampleSelective(@Param("record") TPermission record, @Param("example") TPermission example);

    int updateByExample(@Param("record") TPermission record, @Param("example") TPermission example);
}