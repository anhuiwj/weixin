package com.ah.company.mapper;

import com.ah.company.pojo.ClassInfo;

import java.util.List;
import java.util.Map;

public interface ClassInfoMapper {

    List<ClassInfo> findAll(Map search);

    List<ClassInfo> findAll2(Map search);

    int save(ClassInfo record);

    ClassInfo get(String id);

    void saveClassUser(ClassInfo classInfo);

    int delete(String id);

    void deleteUser(String id);


    void update(ClassInfo classInfo);


    int updateByPrimaryKey(ClassInfo record);
}