package com.ah.health.mapper;

import com.ah.health.pojo.PhysicalExamination;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PhysicalExaminationMapper {
    int countByExample(PhysicalExamination example);

    int deleteByExample(PhysicalExamination example);

    int deleteByPrimaryKey(String id);

    int insert(PhysicalExamination record);

    int insertSelective(PhysicalExamination record);

    List<PhysicalExamination> selectByExample(PhysicalExamination example);

    PhysicalExamination selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") PhysicalExamination record, @Param("example") PhysicalExamination example);

    int updateByExample(@Param("record") PhysicalExamination record, @Param("example") PhysicalExamination example);

    int updateByPrimaryKeySelective(PhysicalExamination record);

    int updateByPrimaryKey(PhysicalExamination record);
}