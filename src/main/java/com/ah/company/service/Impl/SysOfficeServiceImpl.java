package com.ah.company.service.Impl;

import com.ah.company.mapper.SysOfficeMapper;
import com.ah.company.pojo.SysOffice;
import com.ah.company.service.SysOfficeService;
import com.ah.manager.response.JsonResponseEntity;
import com.ah.manager.util.CommonUtil;
import com.ah.manager.util.IdGen;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/**
 * Created by wangjie on 2017/5/2.
 */
@Service
public class SysOfficeServiceImpl implements SysOfficeService {

    @Autowired
    private SysOfficeMapper sysOfficeMapper;

    @Override
    public List<SysOffice> findAll() {

        List<SysOffice> sysOffices = sysOfficeMapper.findAll();

        List<SysOffice> tree = convertTree(sysOffices);
        List<SysOffice> rs = Lists.newArrayList();
        for (SysOffice m : tree) {
            convertList(rs, m);
        }
        return rs;
    }

    @Override
    public SysOffice findById(String id) {
        return sysOfficeMapper.findById(id);
    }

    @Override
    public void save(SysOffice sysOffice) {
        if(StringUtils.isEmpty(sysOffice.getId())){
            sysOffice.setId(IdGen.uuid());
            sysOfficeMapper.save(sysOffice);
        }else{
            sysOfficeMapper.update(sysOffice);
        }
    }

    @Override
    public JsonResponseEntity delete(String id) {
        JsonResponseEntity response = new JsonResponseEntity();
        List<SysOffice> sysOffices = sysOfficeMapper.findChildren(id);
        try {
            if(sysOffices.size()>0){
                response.setCode(110);
                response.setMsg(CommonUtil.ADD_MENU_ERROS);
            }else {
                sysOfficeMapper.delete(id);
                response.setCode(200);
                response.setMsg(CommonUtil.DEL_SUCCESS);
            }
        }catch (Exception e){
            response.setCode(-1);
            response.setMsg(CommonUtil.DEL_ERROR);
        }

        return response;
    }

    //根据查询结果区分上下级关系
    private List<SysOffice> convertTree(List<SysOffice> list) {
        Map<String, SysOffice> map = Maps.newHashMap();
        for (SysOffice s : list) {
            map.put(s.getId(), s);
        }
        List<SysOffice> tree = Lists.newArrayList();
        for (SysOffice m : list) {
            if (StringUtils.isBlank(m.getParentId()) || "1".equals(m.getId())) {
                tree.add(m);
            } else {
                SysOffice sysOffice = map.get(m.getParentId());
                if (sysOffice == null) {
                    tree.add(m);
                } else {
                    List<SysOffice> children = sysOffice.getChildren();
                    if (children == null) {
                        children = Lists.newArrayList();
                        sysOffice.setChildren(children);
                    }
                    children.add(m);
                    Collections.sort(children, new Comparator<SysOffice>() {
                        @Override
                        public int compare(SysOffice o1, SysOffice o2) {
                            int s1 = o1.getSort();
                            int s2 = o2.getSort();
                            return s1 - s2;
                        }
                    });
                }
            }
        }
        Collections.sort(tree, new Comparator<SysOffice>() {
            @Override
            public int compare(SysOffice o1, SysOffice o2) {
                int s1 = o1.getSort();
                int s2 = o2.getSort();
                return s1 - s2;
            }
        });
        return tree;
    }

    /**
     * 递归
     * @param list
     * @param m
     */
    private void convertList(List<SysOffice> list, SysOffice m) {
        list.add(m);
        if (m.getChildren() != null && m.getChildren().size() > 0) {
            for (SysOffice tmp : m.getChildren()) {
                convertList(list, tmp);
            }
        }
    }
}
