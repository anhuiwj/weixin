package com.ah.health.pojo;

import java.util.Date;

public class PhysicalFitnessTest {
    private String id;

    private String studentId;

    private String vitalCapacity;

    private String runFifty;

    private String runEightHundred;

    private String runOneThousand;

    private String sittingFlexion;

    private String standingLongJump;

    private String pullUps;

    private String abdominalCurl;

    private Date testDate;

    private String delFlag;

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
}