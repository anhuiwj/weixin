package com.ah.company.service;

import com.ah.company.pojo.CurriculumInfo;
import com.ah.manager.common.page.model.Pager;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by wangjie on 2017/5/7.
 */
public interface CurriculumInfoService {
    void findAll(Pager pager);

    void save(CurriculumInfo curriculumInfo, MultipartFile file);

    void delete(String id);

    CurriculumInfo get(String id);

}
