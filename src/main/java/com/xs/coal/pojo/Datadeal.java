package com.xs.coal.pojo;

import java.util.Date;
import java.util.List;

public class Datadeal {
	public String getSum() {
		return sum;
	}

	public void setSum(String sum) {
		this.sum = sum;
	}

	public String getIndexName() {
		return indexName;
	}

	public void setIndexName(String indexName) {
		this.indexName = indexName;
	}

	public String getPlantName() {
		return plantName;
	}

	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public List<String> getPalnts() {
		return palnts;
	}

	public void setPalnts(List<String> palnts) {
		this.palnts = palnts;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
	public String getPlantID() {
		return plantID;
	}

	public void setPlantID(String plantID) {
		this.plantID = plantID;
	}

	private String plantID;
	private String sum;
	private String indexName;
	private String plantName;
	private String username;
	private Double max;
	private Double min;
	private List<String> palnts;
	private Date startTime;
	private Date endTime;
	
    private Integer puid;

    private String url;

    private Integer indexid;

    private String dataid;

    private Double indexnumber;

    private String userid;

    private String time;

    private String commanduserid;

    private Date commandtime;

    private String note;

    private String command;

    private Date date;

    private String isover;

    private Double overnumber;

    private String reason;

    public Integer getPuid() {
        return puid;
    }

    public void setPuid(Integer puid) {
        this.puid = puid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getIndexid() {
        return indexid;
    }

    public void setIndexid(Integer indexid) {
        this.indexid = indexid;
    }

    public String getDataid() {
        return dataid;
    }

    public void setDataid(String dataid) {
        this.dataid = dataid == null ? null : dataid.trim();
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
        this.userid = userid == null ? null : userid.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getCommanduserid() {
        return commanduserid;
    }

    public void setCommanduserid(String commanduserid) {
        this.commanduserid = commanduserid == null ? null : commanduserid.trim();
    }

    public Date getCommandtime() {
        return commandtime;
    }

    public void setCommandtime(Date commandtime) {
        this.commandtime = commandtime;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getCommand() {
        return command;
    }

    public void setCommand(String command) {
        this.command = command == null ? null : command.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getIsover() {
        return isover;
    }

    public void setIsover(String isover) {
        this.isover = isover == null ? null : isover.trim();
    }

    public Double getOvernumber() {
        return overnumber;
    }

    public void setOvernumber(Double overnumber) {
        this.overnumber = overnumber;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }
}