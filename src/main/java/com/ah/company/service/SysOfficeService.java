package com.ah.company.service;

import com.ah.company.pojo.SysOffice;
import com.ah.manager.response.JsonResponseEntity;

import java.util.List;

/**
 * Created by wangjie on 2017/5/2.
 */
public interface SysOfficeService {
    List<SysOffice> findAll();

    SysOffice findById(String id);

    void save(SysOffice sysOffice);

    JsonResponseEntity delete(String id);
}
