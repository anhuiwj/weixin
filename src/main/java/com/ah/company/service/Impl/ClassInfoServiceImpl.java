package com.ah.company.service.Impl;

import com.ah.company.mapper.ClassInfoMapper;
import com.ah.company.pojo.ClassInfo;
import com.ah.company.service.ClassInfoService;
import com.ah.manager.common.page.PageQueryMap;
import com.ah.manager.common.page.model.Pager;
import com.ah.manager.mapper.TUserMapper;
import com.ah.manager.pojo.TUser;
import com.ah.manager.util.IdGen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wangjie on 2017/5/4.
 */
@Service
public class ClassInfoServiceImpl implements ClassInfoService {

    @Autowired
    private ClassInfoMapper classInfoMapper;

    @Autowired
    private TUserMapper tUserMapper;

    @Override
    public void findAll(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(classInfoMapper.findAll(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public void findAll2(Pager pager) {
        PageQueryMap param = new PageQueryMap(pager);
        if (pager.getParameters() != null) {
            param.putAll(pager.getParameters());
        }
        pager.setExhibitDatas(classInfoMapper.findAll2(param));
        pager.setIsSuccess(true);           //成功
        pager.setPageCount((pager.getRecordCount() + pager.getPageSize() - 1) / pager.getPageSize());//页数
    }

    @Override
    public List<TUser> findUsers() {
        return tUserMapper.findUserNotInclass();
    }

    @Override
    public void save(ClassInfo classInfo) {
        if(classInfo!=null && StringUtils.isEmpty(classInfo.getId())){
            classInfo.setId(IdGen.uuid());
            classInfo.setCreateDate(new Date());
            classInfoMapper.save(classInfo);
        }else {
            classInfoMapper.update(classInfo);
        }
    }

    @Override
    public void delete(String id) throws MoreException{
        Map search = new HashMap();
        search.put("id",id);
        List<ClassInfo> datas = classInfoMapper.findAll2(search);
        if(datas !=null && datas.size() !=0){
            throw new MoreException("该班级有数据,不可删除");
        }else {
            classInfoMapper.delete(id);
        }
    }

    @Override
    public ClassInfo get(String id) {
        return classInfoMapper.get(id);
    }

    @Override
    public void saveClassUser(ClassInfo classInfo) {
        if(classInfo !=null && StringUtils.isEmpty(classInfo.getId())){
            classInfo.setId(IdGen.uuid());
            classInfoMapper.saveClassUser(classInfo);
        }
    }

    @Override
    public void deleteUser(String id) {
        classInfoMapper.deleteUser(id);
    }

    public class MoreException extends Exception
    {
        public MoreException(String msg)
        {
            super(msg);
        }
    }

}
