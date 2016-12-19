package com.bigbullcar.service;

import java.util.List;

import com.bigbullcar.entity.Message;

public interface MessageService {

	public int insertMessage(Message message);

	public List<Message> getMessageList();

	public Message getMessage(Message message);

	public int deleteMessage(Message message);

	public List<Message> getMessageByUsername(String username);
}
