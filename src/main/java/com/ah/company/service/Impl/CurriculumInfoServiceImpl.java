package com.ah.company.service.Impl;

import com.ah.company.mapper.CurriculumInfoMapper;
import com.ah.company.pojo.CurriculumInfo;
import com.ah.company.service.CurriculumInfoService;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.util.IdGen;
import com.ah.manager.util.UserUtils;
import com.ah.weixin.util.ConfigUtil;
import com.ah.weixin.util.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangjie on 2017/5/7.
 */
@Service
public class CurriculumInfoServiceImpl implements CurriculumInfoService {

    @Autowired
    private CurriculumInfoMapper curriculumInfoMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(curriculumInfoMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void save(CurriculumInfo curriculumInfo, MultipartFile file,HttpServletRequest request) {
        if(curriculumInfo !=null && StringUtils.isEmpty(curriculumInfo.getId())){
            curriculumInfo.setId(IdGen.uuid());
            if("1".equals(curriculumInfo.getType())){//内部地址
                curriculumInfo.setFileName(file.getOriginalFilename());
                String fileName = IdGen.uuid()+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."),file.getOriginalFilename().length());
                String path = request.getContextPath()+"/upload/";
                FileUtils.uploadFile(file,fileName,path);
                curriculumInfo.setCurriculumUrl(fileName);
            }
            curriculumInfoMapper.save(curriculumInfo);
        }else{
            curriculumInfoMapper.update(curriculumInfo);
        }
    }

    @Override
    public void delete(String id) {
        curriculumInfoMapper.delete(id);
    }

    @Override
    public CurriculumInfo get(String id) {
        return curriculumInfoMapper.get(id);
    }

    @Override
    public void findCurriculumInfoByClass(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(curriculumInfoMapper.findCurriculumInfoByClass(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public List<CurriculumInfo> findCurriculems(String classId) {
        return curriculumInfoMapper.findCurriculems(classId);
    }

    @Override
    public void saveClassCurrculum(CurriculumInfo curriculumInfo) {
        curriculumInfo.setId(IdGen.uuid());
        curriculumInfoMapper.saveClassCurrculum(curriculumInfo);
    }

    @Override
    public void deleteClassCurrculum(String mustcurriculumId) {
        curriculumInfoMapper.deleteClassCurrculum(mustcurriculumId);
    }

    @Override
    public void findPersonalCurrculum(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        param.put("userId", UserUtils.getCurrentUser().getId());
        pager.setExhibitDatas(curriculumInfoMapper.findPersonalCurrculum(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }


}
