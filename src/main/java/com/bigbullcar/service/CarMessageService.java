package com.bigbullcar.service;

/**
 * 提供查询车辆信息接口
 * @author cc 2016-11-3
 */
import java.util.List;

import com.bigbullcar.entity.CarMessage;

public interface CarMessageService {
	
	int deleteByPrimaryKey(Integer carid);

	/**
	 * 管理员增加车辆
	 * @param username
	 * @return
	 */
	int addCar(CarMessage carMessage);
	
    int insert(CarMessage record);
    int update(CarMessage carMessage);

    int insertSelective(CarMessage record);

    CarMessage selectByPrimaryKey(Integer carid);

    int updateByPrimaryKeySelective(CarMessage record);

   
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
}
