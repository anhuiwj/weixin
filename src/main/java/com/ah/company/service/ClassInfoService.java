package com.ah.company.service;

import com.ah.company.pojo.ClassInfo;
import com.ah.company.service.Impl.ClassInfoServiceImpl;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.pojo.TUser;

import java.util.List;

/**
 * Created by wangjie on 2017/5/4.
 */
public interface ClassInfoService {
    void findAll(Pager pager);

    void findAll2(Pager pager);

    List<TUser> findUsers();

    void save(ClassInfo classInfo);

    void delete(String id)throws ClassInfoServiceImpl.MoreException;

    ClassInfo get(String id);

    void saveClassUser(ClassInfo classInfo);

    void deleteUser(String id);
}
