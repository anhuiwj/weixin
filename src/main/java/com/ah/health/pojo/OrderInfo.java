package com.ah.health.pojo;

import java.util.Date;

public class OrderInfo {
    private String id;

    private Date orderTime;

    private String orderStatu;

    private String studentId;

    private String guidanceId;

    private Date createDate;

    private String delFlag;

    private String orderTimeString;

    private String createdateString;

    private String username;

    private String userCode;

    private String grade;

    private String sex;

    private String major;//专业

    private String birthday;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderStatu() {
        return orderStatu;
    }

    public void setOrderStatu(String orderStatu) {
        this.orderStatu = orderStatu == null ? null : orderStatu.trim();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public String getGuidanceId() {
        return guidanceId;
    }

    public void setGuidanceId(String guidanceId) {
        this.guidanceId = guidanceId == null ? null : guidanceId.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }

    public String getOrderTimeString() {
        return orderTimeString;
    }

    public void setOrderTimeString(String orderTimeString) {
        this.orderTimeString = orderTimeString;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCreatedateString() {
        return createdateString;
    }

    public void setCreatedateString(String createdateString) {
        this.createdateString = createdateString;
    }
}