package com.ah.health.mapper;

import com.ah.health.pojo.PhysicalFitnessTest;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface PhysicalFitnessTestMapper {

    /**
     * 查询检查数据
     * @param
     * @return
     */
    List<PhysicalFitnessTest> findAll(Map search);

    PhysicalFitnessTest get(String id);

    void delete(String id);

    void save(PhysicalFitnessTest physicalFitnessTest);

    void update(PhysicalFitnessTest physicalFitnessTest);


    int countByExample(PhysicalFitnessTest example);

    int deleteByExample(PhysicalFitnessTest example);

    int deleteByPrimaryKey(String id);

    int insertSelective(PhysicalFitnessTest record);

    List<PhysicalFitnessTest> selectByExample(PhysicalFitnessTest example);

    PhysicalFitnessTest selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") PhysicalFitnessTest record, @Param("example") PhysicalFitnessTest example);

    int updateByExample(@Param("record") PhysicalFitnessTest record, @Param("example") PhysicalFitnessTest example);

    int updateByPrimaryKeySelective(PhysicalFitnessTest record);

    int updateByPrimaryKey(PhysicalFitnessTest record);
}