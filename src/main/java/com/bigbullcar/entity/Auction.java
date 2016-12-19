package com.bigbullcar.entity;

public class Auction {
	private Integer id;
	private String userName;
	private Double buyPrice;
	private Integer carId;
	private Integer isMax;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Double getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(Double buyPrice) {
		this.buyPrice = buyPrice;
	}
	public Integer getCarId() {
		return carId;
	}
	public void setCarId(Integer carId) {
		this.carId = carId;
	}
	public Integer getIsMax() {
		return isMax;
	}
	public void setIsMax(Integer isMax) {
		this.isMax = isMax;
	}
	
	

}
