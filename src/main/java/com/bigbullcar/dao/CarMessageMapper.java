package com.bigbullcar.dao;

import java.util.List;

import com.bigbullcar.entity.CarMessage;

public interface CarMessageMapper {
    int deleteByPrimaryKey(Integer carid);

    int insert(CarMessage record);

    int insertSelective(CarMessage record);

    CarMessage selectByPrimaryKey(Integer carid);

    int updateByPrimaryKeySelective(CarMessage record);

    int update(CarMessage carMessage);
    
    //通过车辆品牌查询车辆信息
  	public List<CarMessage> selectCarMessageByCarBrand(String carbrand);
  	//通过车辆价格查询车辆信息
  	public List<CarMessage> selectCarMessageByCarPrice(CarMessage carMessage);
  	//通过车辆类型查询车辆信息
  	public List<CarMessage> selectCarMessageByCarType(String cartype);

  	
  	/**
  	 * 查询车辆消息，2016-11-07 zbz
  	 * @param carMessage
  	 * @return
  	 */
  	List<CarMessage> selectCarMessages(CarMessage carMessage);
  	
  	/**
  	 * 管理员添加车辆信息方法
  	 */
  	public int addCar(CarMessage carMessage);
	public Integer deleteCarmessage(CarMessage carMessage);
}