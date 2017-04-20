package com.ah.health.service.Impl;

import com.ah.health.mapper.PhysicalExaminationMapper;
import com.ah.health.pojo.PhysicalExamination;
import com.ah.health.service.PhysicalExaminationService;
import com.ah.health.utils.CommonUtils;
import com.ah.health.vo.PhysicalExaminationVo;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.pojo.TUser;
import com.ah.manager.service.UserService;
import com.ah.manager.util.CommonUtil;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * Created by wangjie on 2017/4/12.
 */
@Service
@Transactional
public class PhysicalExaminationServiceImpl implements PhysicalExaminationService {

    @Autowired
    private PhysicalExaminationMapper physicalExaminationMapper;

    @Autowired
    private UserService userService;


    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }

        /**
         * 如果是学生角色查看自己的检查
         */
        if(UserUtils.getRole() == CommonUtils.ROLE_STUDENT){
            param.put("roleId",UserUtils.getCurrentUser().getRole().getId());
            param.put("userId",UserUtils.getCurrentUser().getId());
        }
        pager.setExhibitDatas(physicalExaminationMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public PhysicalExaminationVo get(String id) {
        PhysicalExaminationVo physicalExaminationVo = new PhysicalExaminationVo();
        if(StringUtils.isEmpty(id)){
            physicalExaminationVo.setColorVision(CommonUtils.NORMAL);
            physicalExaminationVo.setEarsLeft(CommonUtils.nothing);
            physicalExaminationVo.setSmell(CommonUtils.NORMAL);
            physicalExaminationVo.setFacialRegion(CommonUtils.NORMAL);
            physicalExaminationVo.setOralCavity(CommonUtils.NORMAL);
            physicalExaminationVo.setTheThroat(CommonUtils.NORMAL);
            physicalExaminationVo.setSkin(CommonUtils.NORMAL);
            physicalExaminationVo.setLimb(CommonUtils.NORMAL);
            physicalExaminationVo.setSpine(CommonUtils.NORMAL);
            physicalExaminationVo.setHeart(CommonUtils.NORMAL);
            physicalExaminationVo.setLung(CommonUtils.NORMAL);
            physicalExaminationVo.setLiver(CommonUtils.NORMAL);
            physicalExaminationVo.setSpleen(CommonUtils.NORMAL);
            physicalExaminationVo.setBlood(CommonUtils.NORMAL);
            physicalExaminationVo.setUrine(CommonUtils.NORMAL);
            physicalExaminationVo.setLiverFunction(CommonUtils.NORMAL);
            physicalExaminationVo.setRenalFunction(CommonUtils.NORMAL);
            physicalExaminationVo.setLymph(CommonUtils.NORMAL);
            physicalExaminationVo.setChestXRayExamination(CommonUtils.NORMAL);
        }else{
            physicalExaminationVo = physicalExaminationMapper.get(id);
        }
        return physicalExaminationVo;
    }

    /**
     * 获取用户信息
     * @param userCode
     * @return
     */
    @Override
    public TUser getUserInfo(String userCode) {
        return userService.findByUserCode(userCode);
    }

    /**
     * 保存提交数据报告
     * @param physicalExamination
     */
    @Override
    public void save(PhysicalExamination physicalExamination) {
        if(StringUtils.isEmpty(physicalExamination.getId())){
            physicalExamination.setId(IdGen.uuid());
            physicalExamination.setCheckDate(new Date());
            physicalExamination.setDelFlag(CommonUtils.NO_DEL_FLAG);
            physicalExaminationMapper.save(physicalExamination);
        }else {
            physicalExaminationMapper.update(physicalExamination);
        }
    }

    @Override
    public void delete(String id) {
        physicalExaminationMapper.delete(id);
    }
}
