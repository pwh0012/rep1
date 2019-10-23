package com.turing.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.entity.Storage;
import com.turing.entity.StorageExample;
import com.turing.mapper.StorageMapper;

@Service
public class DepartSelectService {

	@Autowired
	private StorageMapper sMapper;

	// 查询所有库存
	public List<Storage> StofindAll() {
		return sMapper.selectByExample(null);
	}

	// 查询总记录数目
	public int StoAllCount() {
		return (int) sMapper.countByExample(null);
	}

	// 查询记录
	public int StoCount(String stkWarehouse) {
		StorageExample se = new StorageExample();
		se.createCriteria().andStkWarehouseLike("%" + stkWarehouse + "%");
		return (int) sMapper.countByExample(se);
	}

	// 条件查询
	public List<Storage> StofindBy(String stkWarehouse) {
		StorageExample se = new StorageExample();
		se.createCriteria().andStkWarehouseLike("%" + stkWarehouse + "%");
		return sMapper.selectByExample(se);
	}
}
