package com.bigbullcar.entity;

import java.util.Date;

import com.bigbullcar.utils.ProjectEntity;

public class Message {
    private Integer mesid;

    private String username;

    private String mescontent;

    private String recontent;

    private Integer carid;

    private Date mestime;

    public Integer getMesid() {
        return mesid;
    }

    public void setMesid(Integer mesid) {
        this.mesid = mesid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getMescontent() {
        return mescontent;
    }

    public void setMescontent(String mescontent) {
        this.mescontent = mescontent == null ? null : mescontent.trim();
    }

    public String getRecontent() {
        return recontent;
    }

    public void setRecontent(String recontent) {
        this.recontent = recontent == null ? null : recontent.trim();
    }

    public Integer getCarid() {
        return carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
    }

    public String getMestime() {
    	
        return ProjectEntity.dateToString(mestime);
    }

    public void setMestime(Date mestime) {
        this.mestime = mestime;
    }
}