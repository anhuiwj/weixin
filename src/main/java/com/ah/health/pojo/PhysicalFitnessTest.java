package com.ah.health.pojo;

import java.util.Date;

public class PhysicalFitnessTest {
    private String id;

    private String studentId;

    private String vitalCapacity;//肺活量

    private String runFifty;//50m

    private String runEightHundred;//800m

    private String runOneThousand;//1000m

    private String sittingFlexion;//坐位体前屈

    private String standingLongJump;//立地跳远

    private String pullUps;//引体向上（男）

    private String abdominalCurl;//仰卧起坐

    private Date testDate;//测试时间

    private String delFlag;

    private String username;

    private String userCode;

    private String grade;

    private String sex;

    private String major;//专业

    private String birthday;

    private String testDateString;

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

    public String getVitalCapacity() {
        return vitalCapacity;
    }

    public void setVitalCapacity(String vitalCapacity) {
        this.vitalCapacity = vitalCapacity == null ? null : vitalCapacity.trim();
    }

    public String getRunFifty() {
        return runFifty;
    }

    public void setRunFifty(String runFifty) {
        this.runFifty = runFifty == null ? null : runFifty.trim();
    }

    public String getRunEightHundred() {
        return runEightHundred;
    }

    public void setRunEightHundred(String runEightHundred) {
        this.runEightHundred = runEightHundred == null ? null : runEightHundred.trim();
    }

    public String getRunOneThousand() {
        return runOneThousand;
    }

    public void setRunOneThousand(String runOneThousand) {
        this.runOneThousand = runOneThousand == null ? null : runOneThousand.trim();
    }

    public String getSittingFlexion() {
        return sittingFlexion;
    }

    public void setSittingFlexion(String sittingFlexion) {
        this.sittingFlexion = sittingFlexion == null ? null : sittingFlexion.trim();
    }

    public String getStandingLongJump() {
        return standingLongJump;
    }

    public void setStandingLongJump(String standingLongJump) {
        this.standingLongJump = standingLongJump == null ? null : standingLongJump.trim();
    }

    public String getPullUps() {
        return pullUps;
    }

    public void setPullUps(String pullUps) {
        this.pullUps = pullUps == null ? null : pullUps.trim();
    }

    public String getAbdominalCurl() {
        return abdominalCurl;
    }

    public void setAbdominalCurl(String abdominalCurl) {
        this.abdominalCurl = abdominalCurl == null ? null : abdominalCurl.trim();
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
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

    public String getTestDateString() {
        return testDateString;
    }

    public void setTestDateString(String testDateString) {
        this.testDateString = testDateString;
    }
}