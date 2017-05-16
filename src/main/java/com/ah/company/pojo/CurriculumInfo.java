package com.ah.company.pojo;

import com.ah.manager.pojo.BaseEntity;

public class CurriculumInfo extends BaseEntity{
    private String id;

    private String curriculumName;

    private String curriculumUrl;

    private String type;

    private String fileName;

    private String standardFraction;

    private String curriculumId;

    private String classId;

    private Float learnTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getCurriculumName() {
        return curriculumName;
    }

    public void setCurriculumName(String curriculumName) {
        this.curriculumName = curriculumName == null ? null : curriculumName.trim();
    }

    public String getCurriculumUrl() {
        return curriculumUrl;
    }

    public void setCurriculumUrl(String curriculumUrl) {
        this.curriculumUrl = curriculumUrl == null ? null : curriculumUrl.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getStandardFraction() {
        return standardFraction;
    }

    public void setStandardFraction(String standardFraction) {
        this.standardFraction = standardFraction;
    }

    public String getCurriculumId() {
        return curriculumId;
    }

    public void setCurriculumId(String curriculumId) {
        this.curriculumId = curriculumId;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public Float getLearnTime() {
        return learnTime;
    }

    public void setLearnTime(Float learnTime) {
        this.learnTime = learnTime;
    }
}