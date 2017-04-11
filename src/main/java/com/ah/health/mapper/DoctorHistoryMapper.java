package com.ah.health.mapper;

import com.ah.health.pojo.DoctorHistory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorHistoryMapper {
    int countByExample(DoctorHistory DoctorHistory);

    int deleteByExample(DoctorHistory DoctorHistory);

    int deleteByPrimaryKey(String id);

    int insert(DoctorHistory record);

    int insertSelective(DoctorHistory record);

    List<DoctorHistory> selectByExample(DoctorHistory example);

    DoctorHistory selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") DoctorHistory record, @Param("example") DoctorHistory example);

    int updateByExample(@Param("record") DoctorHistory record, @Param("example") DoctorHistory example);

    int updateByPrimaryKeySelective(DoctorHistory record);

    int updateByPrimaryKey(DoctorHistory record);
}