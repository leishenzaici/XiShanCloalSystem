package com.xs.coal.pojo;

import java.util.Date;

public class DataCodcrSs {
    private String uuid;

    private String dataid;

    private String planid;

    private Date time;

    private Double codcrWaste;

    private Double codcrSewage;

    private Double codcrOut;

    private Double ssWaste;

    private Double ssSewage;

    private Double ssOut;

    private Double codcrAnalyze;

    private Double ssAnalyze;

    private String userid;

    private String delFlag;

    private Date datetime;
    
    private String userName;
    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public String getDataid() {
        return dataid;
    }

    public void setDataid(String dataid) {
        this.dataid = dataid == null ? null : dataid.trim();
    }

    public String getPlanid() {
        return planid;
    }

    public void setPlanid(String planid) {
        this.planid = planid == null ? null : planid.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Double getCodcrWaste() {
        return codcrWaste;
    }

    public void setCodcrWaste(Double codcrWaste) {
        this.codcrWaste = codcrWaste;
    }

    public Double getCodcrSewage() {
        return codcrSewage;
    }

    public void setCodcrSewage(Double codcrSewage) {
        this.codcrSewage = codcrSewage;
    }

    public Double getCodcrOut() {
        return codcrOut;
    }

    public void setCodcrOut(Double codcrOut) {
        this.codcrOut = codcrOut;
    }

    public Double getSsWaste() {
        return ssWaste;
    }

    public void setSsWaste(Double ssWaste) {
        this.ssWaste = ssWaste;
    }

    public Double getSsSewage() {
        return ssSewage;
    }

    public void setSsSewage(Double ssSewage) {
        this.ssSewage = ssSewage;
    }

    public Double getSsOut() {
        return ssOut;
    }

    public void setSsOut(Double ssOut) {
        this.ssOut = ssOut;
    }

    public Double getCodcrAnalyze() {
        return codcrAnalyze;
    }

    public void setCodcrAnalyze(Double codcrAnalyze) {
        this.codcrAnalyze = codcrAnalyze;
    }

    public Double getSsAnalyze() {
        return ssAnalyze;
    }

    public void setSsAnalyze(Double ssAnalyze) {
        this.ssAnalyze = ssAnalyze;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }
}