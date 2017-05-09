package com.ah.company.mapper;

import com.ah.company.pojo.CurriculumInfo;

import java.util.List;
import java.util.Map;

public interface CurriculumInfoMapper {

    List<CurriculumInfo> findAll(Map search);

    int save(CurriculumInfo curriculumInfo);

    int delete(String id);

    CurriculumInfo get(String id);

    int update(CurriculumInfo curriculumInfo);
}