<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	if (session.getAttribute("sPageInfo") == null) {
		out.println("<script>location.href='../StofindAll?pageNum=1';</script>");
	}
%>
<head>
<title></title>
<link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
<link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	function successed(pageNum) {
		//清除表格
		$("#stoTbody").empty();
		$.ajax({
			url : "../StoBy",
			data : {
				'stkWarehouse' : $("#stkWarehouse").val(),
				'pageNum' : pageNum
			},
			async : true,
			type : "get",
			complete : function(data) {
				var jsonData = eval("(" + data.responseText + ")");
				$(jsonData).each(
						function(index, depart) {
							//动态创建表格
							var tr = $("<tr></tr>");
							var td1 = $("<td>" + depart.stkProdId + "</td><td>"
									+ depart.stkWarehouse + "</td><td>"
									+ depart.stkWare + "</td><td>"
									+ depart.stkCount + "</td><td>"
									+ depart.stkMemo + "</td>");
							td1.appendTo(tr);
							tr.appendTo($("#stoTbody"));
						});
				//页面局部刷新
				$("#leftPage").load("DepartSelect.jsp #leftPage");
			}
		});
	}

	$(function() {
		var pageNum = 1;
		//总查询
		$("#sFind").click(function() {
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
			var num = ${sPageInfo.getPages()};
			if (pageNum >= num) {
				pageNum = ${sPageInfo.getPages()};
			} else {
				pageNum++;
			}
			successed(pageNum);
		});
		//尾页
		$("#lPage").click(function() {
			pageNum = ${sPageInfo.getPages()};
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
		<span>库存查询</span><br /> 查询产品库存信息
	</div>
	<table class="tableEdit">
		<tr>
			<th>产品名称：</th>
			<td><input type="text" id="stkProdId" /></td>
			<th>仓库：</th>
			<td><input type="text" id="stkWarehouse" /></td>
		</tr>
		<tfoot>
			<tr>
				<td colspan="4"><input type="button" value="查询" id="sFind" /></td>
			</tr>
		</tfoot>
	</table>
	<br />
	<table class="dataTable">
		<tr>
			<th>产品名称</th>
			<th>仓库</th>
			<th>货位</th>
			<th>件数</th>
			<th>备注</th>
		</tr>
		<tbody id="stoTbody">
			<c:forEach items="${sPageInfo.getList() }" var="sto">
				<tr>
					<c:if test="${sto.stkProdId==1}">
						<td>ThinkPad</td>
					</c:if>
					<c:if test="${sto.stkProdId==2}">
						<td>联想笔记本</td>
					</c:if>
					<td>${sto.stkWarehouse }</td>
					<td>${sto.stkWare }</td>
					<td>${sto.stkCount }</td>
					<td>${sto.stkMemo }</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<div id="pageDiv">
		<div id="leftPage">共有${sCount }条记录，当前第${sPageNum }/${sPageInfo.getPages() }页</div>
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
