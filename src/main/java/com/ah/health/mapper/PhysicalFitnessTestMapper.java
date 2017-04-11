package com.ah.health.mapper;

import com.ah.health.pojo.PhysicalFitnessTest;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PhysicalFitnessTestMapper {
    int countByExample(PhysicalFitnessTest example);

    int deleteByExample(PhysicalFitnessTest example);

    int deleteByPrimaryKey(String id);

    int insert(PhysicalFitnessTest record);

    int insertSelective(PhysicalFitnessTest record);

    List<PhysicalFitnessTest> selectByExample(PhysicalFitnessTest example);

    PhysicalFitnessTest selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") PhysicalFitnessTest record, @Param("example") PhysicalFitnessTest example);

    int updateByExample(@Param("record") PhysicalFitnessTest record, @Param("example") PhysicalFitnessTest example);

    int updateByPrimaryKeySelective(PhysicalFitnessTest record);

    int updateByPrimaryKey(PhysicalFitnessTest record);
}