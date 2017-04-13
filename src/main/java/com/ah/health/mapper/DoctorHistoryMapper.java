package com.ah.health.mapper;

import com.ah.health.pojo.DoctorHistory;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface DoctorHistoryMapper {
    /**
     * 查询检查数据
     * @param
     * @return
     */
    List<DoctorHistory> findAll(Map search);

    void save(DoctorHistory doctorHistory);

    DoctorHistory get(String id);

    void delete(String id);

    void update(DoctorHistory doctorHistory);


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