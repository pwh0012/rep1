<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function(){
                $("#sub").click(function(){
                    var dictIsEditable=0;
                    if($("#dictIsEditable").is(":checked")){
                        dictIsEditable=1;
                    }else{
                        dictIsEditable=0;
                    }

                    $.ajax({
                        url:"../upBasDict",
                        data:{
                            dictType:$("select option:selected").text(),
                            dictItem:$("#dictItem").val(),
                            dictValue:$("#dictValue").val(),
                            dictIsEditable:dictIsEditable
                        },
                        async:true,
                        type:"get",
                        success:function(data){
                            if(data>=1){
                                alert("修改成功！");
                                location.href="DirectionData.jsp";
                            }else{
                            	  alert("修改失败！");
                            }
                        }
                    });
                });
        })
    </script>
</head>
<body>
	<table class="tableEdit">
		<thead>
			<tr>
				<td colspan="4">数据字典条目编辑</td>
			</tr>
		</thead>
		<tr>
			<th>类别：</th>
			<td><select id="dictType">
					<c:if test="${basD.dictType=='企业客户等级' }">
						<option selected="selected">企业客户等级</option>
						<option>服务类型</option>
					</c:if>
					<c:if test="${basD.dictType=='服务类型' }">
						<option>企业客户等级</option>
						<option selected="selected">服务类型</option>
					</c:if>
			</select></td>
			<th>条目：</th>
			<td><input type="text" value="${basD.dictItem }" id="dictItem"/></td>
		</tr>
		<tr>
			<th>值：</th>
			<td><input type="text" value="${basD.dictValue }" id="dictValue"/></td>
			<th>是否编辑：</th>
			<c:if test="${basD.dictIsEditable==1 }">
				<td><input type="checkbox" checked="checked" id="dictIsEditable"/></td>
			</c:if>
			<c:if test="${basD.dictIsEditable==0 }">
				<td><input type="checkbox" id="dictIsEditable"/></td>
			</c:if>
		</tr>
		<tfoot>
			<tr>
				<td colspan="4"><input type="button" value="确定" id="sub"/>&nbsp;&nbsp;
					<input type="button" value="返回" onclick="history.back()" /></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>
