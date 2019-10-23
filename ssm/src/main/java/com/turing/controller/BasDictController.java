package com.turing.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.turing.entity.BasDict;
import com.turing.service.Impl.DirectionDataService;

@Controller
public class BasDictController {
	@Autowired
	private DirectionDataService dds;

	//查询所有
	@RequestMapping("/findBy")
	@ResponseBody
	public List<BasDict> findBy(BasDict b) {
		return dds.findBy(b);
	}

	//添加
	@RequestMapping("/add")
	@ResponseBody
	public int add(String dictType, String dictItem, String dictValue, Integer dictIsEditable) {
		BasDict bd = new BasDict();
		bd.setDictType(dictType);
		bd.setDictItem(dictItem);
		bd.setDictValue(dictValue);
		bd.setDictIsEditable(dictIsEditable);
		return dds.add(bd);
	}

	//删除
	@RequestMapping("/del")
	@ResponseBody
	public int del(Integer dictId) {
		return dds.del(dictId);
	}
	
	//编辑查询
	@RequestMapping("/findOne")
	public String findOne(HttpSession session, Integer dictId) {
		BasDict bd = dds.findOne(dictId);
		session.setAttribute("basD", bd);
		return "redirect:/Manager/DataEdit.jsp";
	}
	
	@RequestMapping("/upBasDict")
	@ResponseBody
	public int upBasDict(HttpSession session,String dictType, String dictItem, String dictValue, Integer dictIsEditable) {
		BasDict bd = (BasDict)session.getAttribute("basD");
		bd.setDictType(dictType);
		bd.setDictItem(dictItem);
		bd.setDictValue(dictValue);
		bd.setDictIsEditable(dictIsEditable);
		return dds.upBasDict(bd);
	}
}
