package com.turing.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.entity.Product;
import com.turing.entity.ProductExample;
import com.turing.mapper.ProductMapper;

@Service
public class ProductSelectService {
	@Autowired
	private ProductMapper pMapper;

	// 查询所有产品
	public List<Product> findAll() {
		return pMapper.selectByExample(null);
	}

	// 模糊查询
	public List<Product> ProfindBy(String prodName, String prodType, String prodBatch) {
		ProductExample pExample = new ProductExample();
		pExample.createCriteria().andProdNameLike("%" + prodName + "%").andProdTypeLike("%" + prodType + "%")
				.andProdBatchLike(prodBatch + "%");
		return pMapper.selectByExample(pExample);
	}

	// 按条件查询记录条数
	public int ProfindCount(String prodName, String prodType, String prodBatch) {
		ProductExample pExample = new ProductExample();
		pExample.createCriteria().andProdNameLike("%" + prodName + "%").andProdTypeLike("%" + prodType + "%")
				.andProdBatchLike(prodBatch + "%");
		return (int) pMapper.countByExample(pExample);
	}

	// 查询所有记录
	public int findAllCount() {
		return (int) pMapper.countByExample(null);
	}
}
