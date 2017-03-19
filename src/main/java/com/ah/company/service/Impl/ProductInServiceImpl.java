package com.ah.company.service.Impl;

import com.ah.company.mapper.InMaterialMapper;
import com.ah.company.pojo.InMaterial;
import com.ah.company.service.ProductInService;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * Created by wangjie on 2017/3/18.
 */
@Service
@Transactional
public class ProductInServiceImpl implements ProductInService {

    @Autowired
    private InMaterialMapper inMaterialMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(inMaterialMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    /**
     * 更新进货信息
     *  没有是插入新记录
     * @param inMaterial
     */
    @Override
    public void save(InMaterial inMaterial) {
        inMaterial.setInUser(UserUtils.getCurrentUser().getUsername());
        inMaterial.setInDate(new Date());
        if(StringUtils.isEmpty(inMaterial.getId())){
            InMaterial inMaterial1 =  inMaterialMapper.selectOne(inMaterial);
            if(inMaterial1!=null){
                inMaterial.setInNum(inMaterial.getInNum()+inMaterial1.getInNum());//进货数量相加
                inMaterial.setId(inMaterial1.getId());
                inMaterialMapper.inmaterial(inMaterial);
            }else{
                inMaterial.setId(IdGen.uuid());
                inMaterialMapper.save(inMaterial);
            }
        }else{
            InMaterial inMaterial1 =  inMaterialMapper.selectOne(inMaterial);
            if(inMaterial1!=null){
                inMaterial.setInNum(inMaterial.getInNum()+inMaterial1.getInNum());//进货数量相加
                inMaterial.setId(inMaterial1.getId());
                inMaterialMapper.inmaterial(inMaterial);
            }
        }
    }
}
