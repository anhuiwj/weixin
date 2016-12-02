package com.ah.weixin.service;

import com.ah.weixin.common.page.model.Pager;
import com.ah.weixin.pojo.TRole;

import java.util.List;

/**
 * Created by wangjie on 16/11/30.
 */
public interface RoleService {
    void findAll(Pager pager);
}
