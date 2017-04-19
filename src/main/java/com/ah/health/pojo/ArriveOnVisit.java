package com.ah.health.pojo;

public class ArriveOnVisit {
    private String id;

    private String orderId;

    private String askQuestion;

    private String suggestion;

    private String username;

    private String userCode;

    private String grade;

    private String sex;

    private String major;//专业

    private String birthday;

    private String studentId;

    private String guidanceId;

    private String orderStatu;

    private String delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getAskQuestion() {
        return askQuestion;
    }

    public void setAskQuestion(String askQuestion) {
        this.askQuestion = askQuestion == null ? null : askQuestion.trim();
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion == null ? null : suggestion.trim();
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

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getGuidanceId() {
        return guidanceId;
    }

    public void setGuidanceId(String guidanceId) {
        this.guidanceId = guidanceId;
    }

    public String getOrderStatu() {
        return orderStatu;
    }

    public void setOrderStatu(String orderStatu) {
        this.orderStatu = orderStatu;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

}