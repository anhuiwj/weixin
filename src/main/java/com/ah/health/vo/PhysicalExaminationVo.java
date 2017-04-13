package com.ah.health.vo;

import java.util.Date;

public class PhysicalExaminationVo {
    private String id;

    private Date checkDate;

    private String checkDateString;

    private String uncorrectedVisualLeft;

    private String uncorrectedVisualRight;

    private String colorVision;

    private String hearingLeft;

    private String hearingRight;

    private String earsLeft;

    private String earsRight;

    private String smell;

    private String facialRegion;

    private String oralCavity;

    private String theThroat;

    private Double height;

    private String wright;

    private String skin;

    private String lymph;

    private String spine;

    private String limb;

    private String other;

    private String bloodPressure;//血压

    private String heartRate;

    private String heart;

    private String lung;

    private String liver;

    private String spleen;

    private String blood;

    private String urine;

    private String liverFunction;

    private String renalFunction;

    private String chestXRayExamination;

    private String userId;

    private String delFlag;

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

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public String getUncorrectedVisualLeft() {
        return uncorrectedVisualLeft;
    }

    public void setUncorrectedVisualLeft(String uncorrectedVisualLeft) {
        this.uncorrectedVisualLeft = uncorrectedVisualLeft == null ? null : uncorrectedVisualLeft.trim();
    }

    public String getUncorrectedVisualRight() {
        return uncorrectedVisualRight;
    }

    public void setUncorrectedVisualRight(String uncorrectedVisualRight) {
        this.uncorrectedVisualRight = uncorrectedVisualRight == null ? null : uncorrectedVisualRight.trim();
    }


    public String getColorVision() {
        return colorVision;
    }

    public void setColorVision(String colorVision) {
        this.colorVision = colorVision;
    }

    public String getHearingLeft() {
        return hearingLeft;
    }

    public void setHearingLeft(String hearingLeft) {
        this.hearingLeft = hearingLeft == null ? null : hearingLeft.trim();
    }

    public String getHearingRight() {
        return hearingRight;
    }

    public void setHearingRight(String hearingRight) {
        this.hearingRight = hearingRight == null ? null : hearingRight.trim();
    }

    public String getEarsLeft() {
        return earsLeft;
    }

    public void setEarsLeft(String earsLeft) {
        this.earsLeft = earsLeft == null ? null : earsLeft.trim();
    }

    public String getEarsRight() {
        return earsRight;
    }

    public void setEarsRight(String earsRight) {
        this.earsRight = earsRight == null ? null : earsRight.trim();
    }

    public String getSmell() {
        return smell;
    }

    public void setSmell(String smell) {
        this.smell = smell == null ? null : smell.trim();
    }

    public String getFacialRegion() {
        return facialRegion;
    }

    public void setFacialRegion(String facialRegion) {
        this.facialRegion = facialRegion == null ? null : facialRegion.trim();
    }

    public String getOralCavity() {
        return oralCavity;
    }

    public void setOralCavity(String oralCavity) {
        this.oralCavity = oralCavity == null ? null : oralCavity.trim();
    }

    public String getTheThroat() {
        return theThroat;
    }

    public void setTheThroat(String theThroat) {
        this.theThroat = theThroat == null ? null : theThroat.trim();
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public String getWright() {
        return wright;
    }

    public void setWright(String wright) {
        this.wright = wright == null ? null : wright.trim();
    }

    public String getSkin() {
        return skin;
    }

    public void setSkin(String skin) {
        this.skin = skin == null ? null : skin.trim();
    }

    public String getLymph() {
        return lymph;
    }

    public void setLymph(String lymph) {
        this.lymph = lymph == null ? null : lymph.trim();
    }

    public String getSpine() {
        return spine;
    }

    public void setSpine(String spine) {
        this.spine = spine == null ? null : spine.trim();
    }

    public String getLimb() {
        return limb;
    }

    public void setLimb(String limb) {
        this.limb = limb == null ? null : limb.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
    }

    public String getHeartRate() {
        return heartRate;
    }

    public void setHeartRate(String heartRate) {
        this.heartRate = heartRate == null ? null : heartRate.trim();
    }

    public String getHeart() {
        return heart;
    }

    public void setHeart(String heart) {
        this.heart = heart == null ? null : heart.trim();
    }

    public String getLung() {
        return lung;
    }

    public void setLung(String lung) {
        this.lung = lung == null ? null : lung.trim();
    }

    public String getLiver() {
        return liver;
    }

    public void setLiver(String liver) {
        this.liver = liver == null ? null : liver.trim();
    }

    public String getSpleen() {
        return spleen;
    }

    public void setSpleen(String spleen) {
        this.spleen = spleen == null ? null : spleen.trim();
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood == null ? null : blood.trim();
    }

    public String getUrine() {
        return urine;
    }

    public void setUrine(String urine) {
        this.urine = urine == null ? null : urine.trim();
    }

    public String getLiverFunction() {
        return liverFunction;
    }

    public void setLiverFunction(String liverFunction) {
        this.liverFunction = liverFunction == null ? null : liverFunction.trim();
    }

    public String getRenalFunction() {
        return renalFunction;
    }

    public void setRenalFunction(String renalFunction) {
        this.renalFunction = renalFunction == null ? null : renalFunction.trim();
    }

    public String getChestXRayExamination() {
        return chestXRayExamination;
    }

    public void setChestXRayExamination(String chestXRayExamination) {
        this.chestXRayExamination = chestXRayExamination == null ? null : chestXRayExamination.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
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

    public String getCheckDateString() {
        return checkDateString;
    }

    public void setCheckDateString(String checkDateString) {
        this.checkDateString = checkDateString;
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

    public String getBloodPressure() {
        return bloodPressure;
    }

    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }
}