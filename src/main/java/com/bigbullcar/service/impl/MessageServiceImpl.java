package com.bigbullcar.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bigbullcar.dao.MessageMapper;
import com.bigbullcar.entity.Message;
import com.bigbullcar.service.MessageService;
/**
 * 用户留言服务实现类
 * @author lyj  11.9
 *
 */

@Service
public class MessageServiceImpl implements MessageService{
	@Resource
	private MessageMapper messageDao;

	@Override
	public int insertMessage(Message message) {
		
		return messageDao.insert(message);
	}

	@Override
	public List<Message> getMessageList() {
		
		return messageDao.getMessageList();
	}

	@Override
	public Message getMessage(Message message) {
		
		return messageDao.getMessage(message);
	}

	@Override
	public int deleteMessage(Message message) {
		// TODO 自动生成的方法存根
		return 0;
	}

	@Override
	public List<Message> getMessageByUsername(String username) {
		// TODO 自动生成的方法存根
		return messageDao.selectMessageByUsername(username);
	}

	
	

}
