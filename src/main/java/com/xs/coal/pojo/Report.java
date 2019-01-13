package com.xs.coal.pojo;

import java.util.Date;
import java.util.List;

public class Report {

	private Integer puid;
	private Integer indexID;
	private String PlantID;
	private String indexName;
	public String getIndexName() {
		return indexName;
	}
	public void setIndexName(String indexName) {
		this.indexName = indexName;
	}
	private List<ReportManage> reportList;
	private String[] imageArray;
   
	public String[] getImageArray() {
		return imageArray;
	}
	public void setImageArray(String[] imageArray) {
		this.imageArray = imageArray;
	}
	public List<ReportManage> getReportList() {
		return reportList;
	}
	public String getPlantID() {
		return PlantID;
	}
	public void setPlantID(String plantID) {
		PlantID = plantID;
	}
	public void setReportList(List<ReportManage> reportList) {
		this.reportList = reportList;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public void setIsNormal(String isNormal) {
		this.isNormal = isNormal;
	}
	private String  url;
     
     private String  username;
     private String  phone;
     private String  reason;
     
     private Date date;
     
     private String dateStr;
	
	public String getDateStr() {
		return dateStr;
	}
	public void setDateStr(String dateStr) {
		this.dateStr = dateStr;
	}
	public Integer getPuid() {
		return puid;
	}
	public void setPuid(Integer puid) {
		this.puid = puid;
	}
	public Integer getIndexID() {
		return indexID;
	}
	public void setIndexID(Integer indexID) {
		this.indexID = indexID;
	}
	private String plantName;
	private String plantLeader;
	private String plantPhoneNumber;
	private String isAll;
	private String isNormal;
	public String getPlantName() {
		return plantName;
	}
	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}
	public String getPlantLeader() {
		return plantLeader;
	}
	public void setPlantLeader(String plantLeader) {
		this.plantLeader = plantLeader;
	}
	
	public String getPlantPhoneNumber() {
		return plantPhoneNumber;
	}
	public void setPlantPhoneNumber(String plantPhoneNumber) {
		this.plantPhoneNumber = plantPhoneNumber;
	}
	public String getIsAll() {
		return isAll;
	}
	public void setIsAll(String isAll) {
		this.isAll = isAll;
	}
	public String getIsNormal() {
		return isNormal;
	}
	public void setIsNormall(String isNormal) {
		this.isNormal = isNormal;
	}
	
	
}
