package com.ah.health.mapper;

import com.ah.health.pojo.Question;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface QuestionMapper {

    List<Question> findAll(Map search);

    int save(Question question);

    Question get(String id);

    void delete(String id);

    void updateSuggestion(Question question);

}