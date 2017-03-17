package com.ah.manager.service.Impl;

import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.mapper.TRoleMapper;
import com.ah.manager.mapper.TRoleMenuMapper;
import com.ah.manager.pojo.TRole;
import com.ah.manager.pojo.TRoleMenu;
import com.ah.manager.service.RoleService;
import com.ah.manager.util.IdGen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * Created by wangjie on 16/11/30.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private TRoleMapper tRoleMapper;

    @Autowired
    private TRoleMenuMapper tRoleMenuMapper;

    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(tRoleMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public int save(TRole role) {
        TRoleMenu tRoleMenu = null;
        if(!StringUtils.isEmpty(role.getId())){
            tRoleMapper.update(role);
        }else {
            role.setId(IdGen.uuid());
            tRoleMapper.insert(role);
        }

        for(String menuId:role.getMenus()){
            tRoleMenu = new TRoleMenu();
            tRoleMenu.setRoleId(role.getId());
            tRoleMenu.setMenuId(menuId);
            tRoleMenu.setDelFlag("0");
            tRoleMenuMapper.save(tRoleMenu);
        }
        return 0;
    }
}
