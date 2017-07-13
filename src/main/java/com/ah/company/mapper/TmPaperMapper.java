package com.ah.company.mapper;

import com.ah.company.pojo.TmPaper;

import java.util.List;
import java.util.Map;

public interface TmPaperMapper {
    List<TmPaper> findAll(Map search);
}