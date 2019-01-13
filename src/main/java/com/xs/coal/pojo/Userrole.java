package com.xs.coal.pojo;

public class Userrole extends UserroleKey {
    private String userid;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }
}