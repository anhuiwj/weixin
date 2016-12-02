package com.ah.weixin.model;

import java.util.Date;

public class WeixinAccount {
    private String id;

    private String accountname;

    private String accounttoken;

    private String accountnumber;

    private String accounttype;

    private String accountemail;

    private String accountdesc;

    private String accountaccesstoken;

    private String accountappid;

    private String accountappsecret;

    private Date addtoekntime;

    private String username;

    private String weixinAccountid;

    private String apiticket;

    private Date apiticketttime;

    private String jsapiticket;

    private Date jsapitickettime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getAccountname() {
        return accountname;
    }

    public void setAccountname(String accountname) {
        this.accountname = accountname == null ? null : accountname.trim();
    }

    public String getAccounttoken() {
        return accounttoken;
    }

    public void setAccounttoken(String accounttoken) {
        this.accounttoken = accounttoken == null ? null : accounttoken.trim();
    }

    public String getAccountnumber() {
        return accountnumber;
    }

    public void setAccountnumber(String accountnumber) {
        this.accountnumber = accountnumber == null ? null : accountnumber.trim();
    }

    public String getAccounttype() {
        return accounttype;
    }

    public void setAccounttype(String accounttype) {
        this.accounttype = accounttype == null ? null : accounttype.trim();
    }

    public String getAccountemail() {
        return accountemail;
    }

    public void setAccountemail(String accountemail) {
        this.accountemail = accountemail == null ? null : accountemail.trim();
    }

    public String getAccountdesc() {
        return accountdesc;
    }

    public void setAccountdesc(String accountdesc) {
        this.accountdesc = accountdesc == null ? null : accountdesc.trim();
    }

    public String getAccountaccesstoken() {
        return accountaccesstoken;
    }

    public void setAccountaccesstoken(String accountaccesstoken) {
        this.accountaccesstoken = accountaccesstoken == null ? null : accountaccesstoken.trim();
    }

    public String getAccountappid() {
        return accountappid;
    }

    public void setAccountappid(String accountappid) {
        this.accountappid = accountappid == null ? null : accountappid.trim();
    }

    public String getAccountappsecret() {
        return accountappsecret;
    }

    public void setAccountappsecret(String accountappsecret) {
        this.accountappsecret = accountappsecret == null ? null : accountappsecret.trim();
    }

    public Date getAddtoekntime() {
        return addtoekntime;
    }

    public void setAddtoekntime(Date addtoekntime) {
        this.addtoekntime = addtoekntime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getWeixinAccountid() {
        return weixinAccountid;
    }

    public void setWeixinAccountid(String weixinAccountid) {
        this.weixinAccountid = weixinAccountid == null ? null : weixinAccountid.trim();
    }

    public String getApiticket() {
        return apiticket;
    }

    public void setApiticket(String apiticket) {
        this.apiticket = apiticket == null ? null : apiticket.trim();
    }

    public Date getApiticketttime() {
        return apiticketttime;
    }

    public void setApiticketttime(Date apiticketttime) {
        this.apiticketttime = apiticketttime;
    }

    public String getJsapiticket() {
        return jsapiticket;
    }

    public void setJsapiticket(String jsapiticket) {
        this.jsapiticket = jsapiticket == null ? null : jsapiticket.trim();
    }

    public Date getJsapitickettime() {
        return jsapitickettime;
    }

    public void setJsapitickettime(Date jsapitickettime) {
        this.jsapitickettime = jsapitickettime;
    }
}