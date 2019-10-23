<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
<link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		function sd(data) {
			var jsonData = eval("(" + data.responseText + ")");
			$.each(
							jsonData,
							function(index, basDict) {
								var tr = $("<tr></tr>");
								var td1 = $("<td>" + basDict.dictType
										+ "</td><td>" + basDict.dictItem
										+ "</td><td>" + basDict.dictValue
										+ "</td>");
								var td2 = $("<td></td>");
								var td3 = $("<td></td>");
								if (basDict.dictIsEditable == 1) {
									td2 = $("<td>是</td>");
									td3 = $("<td><a href='../findOne?dictId="
											+ basDict.dictId
											+ "'><input type='image' src='../images/33.gif' style='border:0px' /></a> <img src='../images/bt_del.gif' title='删除' id='"+basDict.dictId+"' style='border:0px' /></td>");
								} else {
									td2 = $("<td>否</td>");
								}
								td1.appendTo(tr);
								td2.appendTo(tr);
								td3.appendTo(tr);
								tr.appendTo($(".dataTable"));
							});
		}

		$.ajax({
			url : '../findBy',
			type : 'get',
			data : $("#aform").serialize(),
			async : true,
			complete : function(data) {
				sd(data);
			}
		});

		$("#find").click(function() {
			$("#tbody2").empty();
			$.ajax({
				url : '../findBy',
				type : 'get',
				data : $("#aform").serialize(),
				async : true,
				complete : function(data) {
					sd(data)
				}
			});
		});

		$("#tbody2").on("click", "img", function() {
			if (confirm("是否删除？")) {
				$.ajax({
					url : '../del',
					type : 'get',
					data : 'dictId=' + $(this).attr("id"),
					async : true,
					complete : function(data) {
						var jsonData = eval("(" + data.responseText + ")");
						if (jsonData > 0) {
							alert("删除成功.");
							location.reload();
						} else {
							alert("删除失败。");
						}
					}
				});
			}
		});

	})
</script>
</head>
<body>
	<div id="desDiv">
		<span>数据字典管理</span><br /> 管理系统所需的数据字典内容
	</div>
	<form method="get" id="aform">
		<table class="tableEdit">
			<tr>
				<th>类别：</th>
				<td><input type="text" name="dictType" value="" /></td>
				<th>条目：</th>
				<td><input type="text" name="dictItem" value="" /></td>
				<th>值：</th>
				<td><input type="text" name="dictValue" value="" /></td>
			</tr>
			<tfoot>
				<tr>
					<td colspan="8"><input type="button" value="查询" id="find" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
	<div id="dataDiv">
		<div id="headDiv">
			<img src="../images/22.gif" />&nbsp;&nbsp;<a href="DataAdd.jsp?1=1">新建</a>
		</div>
		<table class="dataTable">
			<thead>
				<tr>
					<th>类别</th>
					<th>条目</th>
					<th>值</th>
					<th>是否可编辑</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody2">
			</tbody>
		</table>
	</div>
</body>
</html>
