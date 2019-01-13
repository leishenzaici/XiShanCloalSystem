package com.xs.coal.pojo;

import java.util.Date;
/**
 * 数据管理展示数据
 * @author Administrator
 *
 */
public class ManageDateDto {
	
	public String getPlantname() {
		return plantname;
	}


	public void setPlantname(String plantname) {
		this.plantname = plantname;
	}


	public int getPuid() {
		return puid;
	}


	public void setPuid(int puid) {
		this.puid = puid;
	}


	public int getIndexid() {
		return indexid;
	}


	public void setIndexid(int indexid) {
		this.indexid = indexid;
	}


	public String getDataid() {
		return dataid;
	}


	public void setDataid(String dataid) {
		this.dataid = dataid;
	}


	public Double getIndexnumber() {
		return indexnumber;
	}


	public void setIndexnumber(Double indexnumber) {
		this.indexnumber = indexnumber;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getIndexname() {
		return indexname;
	}


	public void setIndexname(String indexname) {
		this.indexname = indexname;
	}


	public Double getMax() {
		return max;
	}


	public void setMax(Double max) {
		this.max = max;
	}


	public Double getMin() {
		return min;
	}


	public void setMin(Double min) {
		this.min = min;
	}


	/**
	 * 机构名称
	 */
	private String plantname;
	/**
	 * 单条数据id
	 */
	private int puid;
	/**
	 * 指标id
	 */
	private int indexid;
	/**
	 * 数据id
	 */
	private String dataid;
	/**
	 * 数据量
	 */
	private Double indexnumber;
	/**
	 * 用户id
	 */
	private String userid;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 时间
	 */
	private String time;
	/**
	 * 具体时间
	 */
	private Date date;
	/**
	 * 指标名称
	 */
	private String indexname;
	
	private Double max;
	

	private Double min;
	
	
	
}
