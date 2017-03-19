package com.ah.company.service;

import com.ah.company.pojo.InMaterial;
import com.ah.manager.common.page.model.Pager;

/**
 * Created by wangjie on 2017/3/18.
 */
public interface ProductInService {
    void findAll(Pager pager);

    void save(InMaterial inMaterial);

}
