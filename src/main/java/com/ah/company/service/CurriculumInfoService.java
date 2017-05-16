package com.ah.company.service;

import com.ah.company.pojo.CurriculumInfo;
import com.ah.manager.common.page.model.Pager;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangjie on 2017/5/7.
 */
public interface CurriculumInfoService {
    void findAll(Pager pager);

    void save(CurriculumInfo curriculumInfo, MultipartFile file,HttpServletRequest request);

    void delete(String id);

    CurriculumInfo get(String id);

    void findCurriculumInfoByClass(Pager pager);

    List<CurriculumInfo> findCurriculems(String classId);

    void saveClassCurrculum(CurriculumInfo curriculumInfo);

    void deleteClassCurrculum(String mustcurriculumId);

    void findPersonalCurrculum(Pager pager);

}
