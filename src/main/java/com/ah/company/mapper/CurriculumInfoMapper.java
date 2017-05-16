package com.ah.company.mapper;

import com.ah.company.pojo.ClassInfo;
import com.ah.company.pojo.CurriculumInfo;

import java.util.List;
import java.util.Map;

public interface CurriculumInfoMapper {

    List<CurriculumInfo> findAll(Map search);

    List<ClassInfo> findCurriculumInfoByClass(Map search);

    int save(CurriculumInfo curriculumInfo);

    int delete(String id);

    CurriculumInfo get(String id);

    int update(CurriculumInfo curriculumInfo);

    List<CurriculumInfo> findCurriculems(String  classId);

    void saveClassCurrculum(CurriculumInfo curriculumInfo);

    void deleteClassCurrculum(String id);

    List<CurriculumInfo> findPersonalCurrculum(Map search);

}