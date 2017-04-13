package com.ah.health.pojo;

import java.util.Date;

public class DoctorHistory {
    private String id;

    private String studentId;

    private Date doctorTime;

    private String ill;//疾病

    private String treatmentPlan;//治疗方案

    private String delFlag;

    private String username;

    private String userCode;

    private String grade;

    private String sex;

    private String major;//专业

    private String birthday;

    private String doctorTimeString;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public Date getDoctorTime() {
        return doctorTime;
    }

    public void setDoctorTime(Date doctorTime) {
        this.doctorTime = doctorTime;
    }

    public String getIll() {
        return ill;
    }

    public void setIll(String ill) {
        this.ill = ill == null ? null : ill.trim();
    }

    public String getTreatmentPlan() {
        return treatmentPlan;
    }

    public void setTreatmentPlan(String treatmentPlan) {
        this.treatmentPlan = treatmentPlan == null ? null : treatmentPlan.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
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

    public String getDoctorTimeString() {
        return doctorTimeString;
    }

    public void setDoctorTimeString(String doctorTimeString) {
        this.doctorTimeString = doctorTimeString;
    }
}