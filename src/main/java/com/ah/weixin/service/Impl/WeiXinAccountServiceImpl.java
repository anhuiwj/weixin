package com.ah.weixin.service.Impl;

import com.ah.weixin.mapper.WeixinAccountMapper;
import com.ah.weixin.model.WeixinAccount;
import com.ah.weixin.service.WeiXinAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangjie on 16/12/2.
 */
@Service
public class WeiXinAccountServiceImpl implements WeiXinAccountService{

    @Autowired
    private WeixinAccountMapper weixinAccountMapper;

    @Override
    public List<WeixinAccount> getList() {
        return  weixinAccountMapper.getList();
    }
}
