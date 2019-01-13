package com.xs.coal.pojo;

public class Plant {
    private String plantid;

    private String plantname;

    private String plantadress;

    private String plantleader;

    private String plantphonenumber;

    private String pId;

    private Byte isapartment;

    private String isdelete;

    private String teamname;

    public String getPlantid() {
        return plantid;
    }

    public void setPlantid(String plantid) {
        this.plantid = plantid == null ? null : plantid.trim();
    }

    public String getPlantname() {
        return plantname;
    }

    public void setPlantname(String plantname) {
        this.plantname = plantname == null ? null : plantname.trim();
    }

    public String getPlantadress() {
        return plantadress;
    }

    public void setPlantadress(String plantadress) {
        this.plantadress = plantadress == null ? null : plantadress.trim();
    }

    public String getPlantleader() {
        return plantleader;
    }

    public void setPlantleader(String plantleader) {
        this.plantleader = plantleader == null ? null : plantleader.trim();
    }

    public String getPlantphonenumber() {
        return plantphonenumber;
    }

    public void setPlantphonenumber(String plantphonenumber) {
        this.plantphonenumber = plantphonenumber == null ? null : plantphonenumber.trim();
    }


    public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public Byte getIsapartment() {
        return isapartment;
    }

    public void setIsapartment(Byte isapartment) {
        this.isapartment = isapartment;
    }

    public String getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(String isdelete) {
        this.isdelete = isdelete == null ? null : isdelete.trim();
    }

    public String getTeamname() {
        return teamname;
    }

    public void setTeamname(String teamname) {
        this.teamname = teamname == null ? null : teamname.trim();
    }
}