package com.ah.health.mapper;

import com.ah.health.pojo.PhysicalExamination;
import com.ah.health.vo.PhysicalExaminationVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface PhysicalExaminationMapper {

    /**
     * 查询检查数据
     * @param
     * @return
     */
    List<PhysicalExaminationVo> findAll(Map search);

    void save(PhysicalExamination record);

    PhysicalExaminationVo get(String id);

    void delete(String id);

    void update(PhysicalExamination physicalExamination);


    int countByExample(PhysicalExamination example);

    int deleteByExample(PhysicalExamination example);

    int deleteByPrimaryKey(String id);


    int insertSelective(PhysicalExamination record);

    List<PhysicalExamination> selectByExample(PhysicalExamination example);

    PhysicalExamination selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") PhysicalExamination record, @Param("example") PhysicalExamination example);

    int updateByExample(@Param("record") PhysicalExamination record, @Param("example") PhysicalExamination example);

    int updateByPrimaryKeySelective(PhysicalExamination record);

    int updateByPrimaryKey(PhysicalExamination record);
}