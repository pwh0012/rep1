package com.turing.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.turing.entity.Product;
import com.turing.service.Impl.ProductSelectService;

@Controller
public class ProductController {

	@Autowired
	private ProductSelectService pss;

	// 查询所有产品
	@RequestMapping("/findAll")
	public String findAll(HttpSession session, Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<Product> plist = pss.findAll();
		PageInfo<Product> pageInfo = new PageInfo<Product>(plist);
		//总记录条数
		int count = pss.findAllCount();
		session.setAttribute("pPageInfo", pageInfo);
		session.setAttribute("pPageNum", pageNum);
		session.setAttribute("pCount", count);
		return "redirect:/Manager/ProductSelect.jsp";
	}

	// 模糊查询产品
	@RequestMapping("/ProfindBy")
	@ResponseBody
	public List<Product> ProfindBy(HttpSession session, String prodName, String prodType, String prodBatch,
			Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		//获取模糊查询数据
		List<Product> plist = pss.ProfindBy(prodName, prodType, prodBatch);
		//进行分页
		PageInfo<Product> pageInfo = new PageInfo<Product>(plist);
		//存储相关数据
		session.setAttribute("pPageInfo", pageInfo);
		session.setAttribute("pCount", pss.ProfindCount(prodName, prodType, prodBatch));
		session.setAttribute("pPageNum", pageNum);
		return pageInfo.getList();
	}
}
