package com.ah.company.pojo;

import java.util.Date;

public class TmPaper {
    private String pId;

    private String pName;

    private String pCid;

    private Integer pStatus;

    private Date pStarttime;

    private Date pEndtime;

    private Integer pDuration;

    private Date pShowtime;

    private Integer pTotalScore;

    private Integer pPassScore;

    private Integer pQuestionOrder;

    private Integer pPapertype;

    private String pPoster;

    private Date pCreatedate;

    private String pModifyor;

    private Date pModifydate;

    private Integer pShowkey;

    private Integer pShowmode;

    private String startTime;

    private String endTime;

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId == null ? null : pId.trim();
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpCid() {
        return pCid;
    }

    public void setpCid(String pCid) {
        this.pCid = pCid == null ? null : pCid.trim();
    }

    public Integer getpStatus() {
        return pStatus;
    }

    public void setpStatus(Integer pStatus) {
        this.pStatus = pStatus;
    }

    public Date getpStarttime() {
        return pStarttime;
    }

    public void setpStarttime(Date pStarttime) {
        this.pStarttime = pStarttime;
    }

    public Date getpEndtime() {
        return pEndtime;
    }

    public void setpEndtime(Date pEndtime) {
        this.pEndtime = pEndtime;
    }

    public Integer getpDuration() {
        return pDuration;
    }

    public void setpDuration(Integer pDuration) {
        this.pDuration = pDuration;
    }

    public Date getpShowtime() {
        return pShowtime;
    }

    public void setpShowtime(Date pShowtime) {
        this.pShowtime = pShowtime;
    }

    public Integer getpTotalScore() {
        return pTotalScore;
    }

    public void setpTotalScore(Integer pTotalScore) {
        this.pTotalScore = pTotalScore;
    }

    public Integer getpPassScore() {
        return pPassScore;
    }

    public void setpPassScore(Integer pPassScore) {
        this.pPassScore = pPassScore;
    }

    public Integer getpQuestionOrder() {
        return pQuestionOrder;
    }

    public void setpQuestionOrder(Integer pQuestionOrder) {
        this.pQuestionOrder = pQuestionOrder;
    }

    public Integer getpPapertype() {
        return pPapertype;
    }

    public void setpPapertype(Integer pPapertype) {
        this.pPapertype = pPapertype;
    }

    public String getpPoster() {
        return pPoster;
    }

    public void setpPoster(String pPoster) {
        this.pPoster = pPoster == null ? null : pPoster.trim();
    }

    public Date getpCreatedate() {
        return pCreatedate;
    }

    public void setpCreatedate(Date pCreatedate) {
        this.pCreatedate = pCreatedate;
    }

    public String getpModifyor() {
        return pModifyor;
    }

    public void setpModifyor(String pModifyor) {
        this.pModifyor = pModifyor == null ? null : pModifyor.trim();
    }

    public Date getpModifydate() {
        return pModifydate;
    }

    public void setpModifydate(Date pModifydate) {
        this.pModifydate = pModifydate;
    }

    public Integer getpShowkey() {
        return pShowkey;
    }

    public void setpShowkey(Integer pShowkey) {
        this.pShowkey = pShowkey;
    }

    public Integer getpShowmode() {
        return pShowmode;
    }

    public void setpShowmode(Integer pShowmode) {
        this.pShowmode = pShowmode;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }
}