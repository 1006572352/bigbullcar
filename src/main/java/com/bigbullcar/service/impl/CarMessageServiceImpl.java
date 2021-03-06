package com.bigbullcar.service.impl;
/**
 * 查询车辆实现接口
 * @author cc 2016-11-3
 */
import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bigbullcar.dao.CarMessageMapper;
import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.service.CarMessageService;

@Service("carMessageService")
public class CarMessageServiceImpl implements CarMessageService{

	@Resource
	private CarMessageMapper carMessageDao;
	
    @Override
	public List<CarMessage> selectCarMessageByCarBrand(String carbrand) {
		// TODO 自动生成的方法存根
		return carMessageDao.selectCarMessageByCarBrand(carbrand);
	}

	@Override
	public List<CarMessage> selectCarMessageByCarPrice(CarMessage carMessage) {
		// TODO 自动生成的方法存根
		return carMessageDao.selectCarMessageByCarPrice(carMessage);
	}

	@Override
	public List<CarMessage> selectCarMessageByCarType(String cartype) {
		// TODO 自动生成的方法存根
		return carMessageDao.selectCarMessageByCarType(cartype);
	}


	@Override
	public int deleteByPrimaryKey(Integer carid) {
		// TODO 自动生成的方法存根
		return carMessageDao.deleteByPrimaryKey(carid);
	}

	@Override
	public int insert(CarMessage record) {
		// TODO 自动生成的方法存根
		return carMessageDao.insert(record);
	}

	@Override
	public int insertSelective(CarMessage record) {
		// TODO 自动生成的方法存根
		return carMessageDao.insertSelective(record);
	}

	@Override
	public CarMessage selectByPrimaryKey(Integer carid) {
		// TODO 自动生成的方法存根
		return carMessageDao.selectByPrimaryKey(carid);
	}

	@Override
	public int updateByPrimaryKeySelective(CarMessage record) {
		// TODO 自动生成的方法存根
		return carMessageDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int update(CarMessage record) {
		// TODO 自动生成的方法存根
		return carMessageDao.update(record);
	}

	@Override
	public List<CarMessage> selectCarMessages(CarMessage carMessage) {
		// TODO 自动生成的方法存根
		return carMessageDao.selectCarMessages(carMessage);
	}

	/**
	 * 管理员增加车辆
	 */
	@Override
	public int addCar(CarMessage carMessage) {
		// TODO 自动生成的方法存根
		return carMessageDao.addCar(new CarMessage());
	}
}
