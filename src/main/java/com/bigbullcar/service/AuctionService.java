package com.bigbullcar.service;

import java.util.List;

import com.bigbullcar.entity.Auction;

public interface AuctionService {
	int add(Auction auction);
	int update(Auction auction);
	List<Auction> select(Auction auction );
	int delete(Auction auction);
	Auction selectMax(Auction auction);
}
