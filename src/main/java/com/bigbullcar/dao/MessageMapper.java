package com.bigbullcar.dao;

import java.util.List;

import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.entity.Message;


public interface MessageMapper {
    int deleteByPrimaryKey(Integer mesid);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer mesid);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
 	public Integer deleteMessage(Message message);
 	Message getMessage(Message message);
 	List<Message> getMessageList();
 	
 	List<Message> selectMessageByUsername(String username);
}