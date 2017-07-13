package com.ah.company.service.Impl;

import com.ah.company.mapper.TmPaperMapper;
import com.ah.company.service.TmPagerService;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.DateUtils;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wangjie on 2017/5/16.
 */
@Service
public class TmPagerServiceImpl implements TmPagerService {

    @Autowired
    private TmPaperMapper tmPaperMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        param.put("pStarttime", DateUtils.getDate());
        param.put("username", UserUtils.getCurrentUser().getUserCode());
        pager.setExhibitDatas(tmPaperMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }
}
