package com.bigbullcar.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bigbullcar.dao.AuctionMapper;
import com.bigbullcar.entity.Auction;
import com.bigbullcar.service.AuctionService;
@Service
public class AuctionServiceImpl implements AuctionService{
@Resource
private AuctionMapper auctionDao;
	@Override
	public int add(Auction auction) {
		// TODO 自动生成的方法存根
		return auctionDao.add(auction);
	}

	@Override
	public int update(Auction auction) {
		// TODO 自动生成的方法存根
		return auctionDao.update(auction);
	}

	@Override
	public List<Auction> select(Auction auction) {
		// TODO 自动生成的方法存根
		return auctionDao.select(auction);
	}

	@Override
	public int delete(Auction auction) {
		// TODO 自动生成的方法存根
		return auctionDao.delete(auction);
	}

	@Override
	public Auction selectMax(Auction auction) {
		// TODO 自动生成的方法存根
		return auctionDao.selectMax(auction);
	}

	

}
