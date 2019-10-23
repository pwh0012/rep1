<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	if (session.getAttribute("pPageInfo") == null) {
		out.println("<script>location.href='../findAll?pageNum=1';</script>");
	}
%>
<head>
<title></title>
<link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
<link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	//封装成功函数
	function successed(pageNum) {
		//清除表格
		$("#proTbody").empty();
		$.ajax({
			url : "../ProfindBy",
			data : {
				'prodName' : $("#prodName").val(),
				'prodType' : $("#prodType").val(),
				'prodBatch' : $("#prodBatch").val(),
				'pageNum' : pageNum
			},
			async : true,
			type : "get",
			complete : function(data) {
				var jsonData = eval("(" + data.responseText + ")");
				$(jsonData).each(
						//创建表格显示数据
						function(index, product) {
							var tr = $("<tr></tr>");
							var td1 = $("<td>" + product.prodName + "</td><td>"
									+ product.prodType + "</td><td>"
									+ product.prodBatch + "</td><td>"
									+ product.proUnit + "</td><td>"
									+ product.proPrice + "</td><td>"
									+ product.proMemo + "</td>");
							td1.appendTo(tr);
							tr.appendTo($("#proTbody"));
						});
				//局部刷新数据
				$("#leftPage").load("ProductSelect.jsp #leftPage");
			}
		});
	}
	
	$(function() {
		var pageNum = 1;
		
		//查询按钮
		$("#pFind").click(function() {
			successed(pageNum);
		});

		//首页
		$("#fPage").click(function() {
			pageNum = 1;
			successed(pageNum);
		});

		//上一页
		$("#backPage").click(function() {
			if (pageNum <= 1) {
				pageNum = 1;
			} else {
				pageNum--;
			}
			successed(pageNum);
		});

		//下一页
		$("#nextPage").click(function() {
			var num = ${pPageInfo.getPages()};
			if (pageNum >= num) {
				pageNum = ${pPageInfo.getPages()};
			} else {
				pageNum++;
			}
			successed(pageNum);
		});

		//末页
		$("#lPage").click(function() {
			pageNum = ${pPageInfo.getPages()};
			successed(pageNum);
		});

		//跳转页面
		$("#surePage").click(function() {
			if (/[1-9]+\d*/.test($("#pages").val())) {
				pageNum = $("#pages").val();
				successed(pageNum);
			}else{
				alert("请输入有效数字。");
			}
		});
	})
</script>
</head>



<body>
	<div id="desDiv">
		<span>产品查询</span><br /> 查询产品信息
	</div>
	<form id="pFrom" method="get">
		<table class="tableEdit">
			<tr>
				<th>产品名称：</th>
				<td><input type="text" name="prodName" id="prodName" /></td>
				<th>型号：</th>
				<td><input type="text" name="prodType" id="prodType" /></td>
				<th>批次：</th>
				<td><input type="text" name="prodBatch" id="prodBatch" /></td>
			</tr>
			<tfoot>
				<tr>
					<td colspan="8"><input type="button" id="pFind" value="查询" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
	<br />
	<table class="dataTable">
		<tr>
			<th>产品名称</th>
			<th>型号</th>
			<th>等级/批次</th>
			<th>单位</th>
			<th>单价(元)</th>
			<th>备注</th>
		</tr>
		<tbody id="proTbody">
			<c:forEach items="${pPageInfo.getList() }" var="pro">
				<tr>
					<td>${pro.prodName }</td>
					<td>${pro.prodType }</td>
					<td>${pro.prodBatch }</td>
					<td>${pro.proUnit }</td>
					<td>${pro.proPrice }</td>
					<td>${pro.proMemo }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="pageDiv">
		<div id="leftPage">共有${pCount }条记录，当前第${pPageNum }/${pPageInfo.getPages() }页</div>
		<div id="rightPage">
			<input type="image" src="../images/first.gif" id="fPage" />&nbsp;&nbsp;
			<input type="image" src="../images/back.gif" id="backPage" />&nbsp;&nbsp;
			<input type="image" src="../images/next.gif" id="nextPage" />&nbsp;&nbsp;
			<input type="image" src="../images/last.gif" id="lPage" />&nbsp;&nbsp;
			转到第<input type="text" size="1" id="pages" />&nbsp;&nbsp;<input
				type="image" src="../images/go.gif" id="surePage" />
		</div>
	</div>
</body>
</html>
