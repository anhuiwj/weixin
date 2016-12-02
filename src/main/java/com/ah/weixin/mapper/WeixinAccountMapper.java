package com.ah.weixin.mapper;

import com.ah.weixin.model.WeixinAccount;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WeixinAccountMapper {
    int countByExample(WeixinAccount example);

    int deleteByExample(WeixinAccount example);

    int deleteByPrimaryKey(String id);

    int insert(WeixinAccount record);

    int insertSelective(WeixinAccount record);

    List<WeixinAccount> getList();

    WeixinAccount selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") WeixinAccount record, @Param("example") WeixinAccount weixinAccount);

    int updateByExample(@Param("record") WeixinAccount record, @Param("example") WeixinAccount weixinAccount);

    int updateByPrimaryKeySelective(WeixinAccount record);

    int updateByPrimaryKey(WeixinAccount record);
}