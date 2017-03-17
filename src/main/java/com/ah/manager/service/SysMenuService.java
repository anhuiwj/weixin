package com.ah.manager.service;

import com.ah.manager.pojo.SysMenu;

import java.util.List;

/**
 * Created by wangjie on 17/1/5.
 */
public interface SysMenuService {
    List<SysMenu> findMenusByTree();
    List<SysMenu> findAll();
    List<SysMenu> findMenu();
    SysMenu findById(String id);

    boolean save(SysMenu sysMenu);
}
