package com.turing.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.entity.BasDict;
import com.turing.entity.BasDictExample;
import com.turing.mapper.BasDictMapper;

@Service
public class DirectionDataService {
	@Autowired
	private BasDictMapper bMapper;

	public List<BasDict> findBy(BasDict b) {
		BasDictExample e = new BasDictExample();
		e.createCriteria().andDictTypeLike("%" + b.getDictType() + "%").andDictItemLike("%" + b.getDictItem() + "%")
				.andDictValueLike("%" + b.getDictValue() + "%");
		return bMapper.selectByExample(e);
	}

	public int add(BasDict b) {
		return bMapper.insertSelective(b);
	}

	public int del(Integer dictId) {
		return bMapper.deleteByPrimaryKey(dictId);
	}

	public BasDict findOne(Integer dictId) {
		return bMapper.selectByPrimaryKey(dictId);
	}

	public int upBasDict(BasDict b) {
		return bMapper.updateByPrimaryKeySelective(b);
	}
}
