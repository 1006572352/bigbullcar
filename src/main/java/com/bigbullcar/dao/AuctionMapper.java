package com.bigbullcar.dao;

import java.util.List;

import com.bigbullcar.entity.Auction;

public interface AuctionMapper {
	int add(Auction auction);
	int update(Auction auction);
	List<Auction> select(Auction auction );
	int delete(Auction auction);
	Auction selectMax(Auction auction);
	
}
