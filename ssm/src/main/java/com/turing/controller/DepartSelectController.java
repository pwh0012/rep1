package com.turing.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.turing.entity.Storage;
import com.turing.service.Impl.DepartSelectService;

@Controller
public class DepartSelectController {
			
			@Autowired
			private DepartSelectService dss;
			
			@RequestMapping("/StofindAll")
			public String StofindAll(HttpSession session,Integer pageNum) {
				PageHelper.startPage(pageNum, 8);
				int count=dss.StoAllCount();
				List<Storage> slist=dss.StofindAll();
				PageInfo<Storage> sPageInfo=new PageInfo<Storage>(slist);
				session.setAttribute("sCount", count);
				session.setAttribute("sPageNum", pageNum);
				session.setAttribute("sPageInfo", sPageInfo);
				return "redirect:/Manager/DepartSelect.jsp";
			}
			
			@RequestMapping("/StoBy")
			@ResponseBody
			public List<Storage> StofindBy(HttpSession session,String stkWarehouse,Integer pageNum){
				PageHelper.startPage(pageNum,8);
				int count=dss.StoCount(stkWarehouse);
				PageInfo<Storage> sPageInfo=new PageInfo<Storage>(dss.StofindBy(stkWarehouse));
				session.setAttribute("sCount", count);
				session.setAttribute("sPageNum", pageNum);
				session.setAttribute("sPageInfo", sPageInfo);
				return sPageInfo.getList();
			}
}
