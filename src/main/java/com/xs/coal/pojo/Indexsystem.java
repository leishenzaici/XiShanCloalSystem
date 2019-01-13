package com.xs.coal.pojo;

import java.util.Date;

public class Indexsystem {
    private Integer indexid;

    private String plantid;

    private String indexname;

    private String isdelete;

    private String unit;

    private Byte basicnumber;

    private String parentid;

    private Date addtime;

    private Double max;

    private Double min;
    
    private Double sum;

    public Double getSum() {
		return sum;
	}

	public void setSum(Double sum) {
		this.sum = sum;
	}

	public Integer getIndexid() {
        return indexid;
    }

    public void setIndexid(Integer indexid) {
        this.indexid = indexid;
    }

    public String getPlantid() {
        return plantid;
    }

    public void setPlantid(String plantid) {
        this.plantid = plantid == null ? null : plantid.trim();
    }

    public String getIndexname() {
        return indexname;
    }

    public void setIndexname(String indexname) {
        this.indexname = indexname == null ? null : indexname.trim();
    }

    public String getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(String isdelete) {
        this.isdelete = isdelete == null ? null : isdelete.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public Byte getBasicnumber() {
        return basicnumber;
    }

    public void setBasicnumber(Byte basicnumber) {
        this.basicnumber = basicnumber;
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
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
}