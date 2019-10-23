<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
                        url:"../add",
                        data:{
                            dictType:$("select option:selected").text(),
                            dictItem:$("#dictItem").val(),
                            dictValue:$("#dictValue").val(),
                            dictIsEditable:dictIsEditable
                        },
                        async:true,
                        type:"post",
                        success:function(data){
                            if(data>=1){
                                alert("添加成功！");
                                location.href="DirectionData.jsp";
                            }else{
                            	  alert("添加失败！");
                            }
                        },
                        error:function(){
                            alert("添加失败！");
                        }
                    });
                });
        })
    </script>
</head>
<body>
<form id="DirFrom" method="post">
<table class="tableEdit">
    <thead>
    <tr>
        <td colspan="4">新建数据字典条目</td>
    </tr>
    </thead>
    <tr>
        <th>类别：</th>
        <td>
            <select name="dictType" id="dictType">
                <option>企业客户等级</option>
                <option>服务类型</option>
            </select>
        </td>
        <th>条目：</th>
        <td>
            <input type="text" name="dictItem" id="dictItem"/>
        </td>
    </tr>
    <tr>
        <th>值：</th>
        <td><input type="text" name="dictValue" id="dictValue"/></td>
        <th>是否编辑：</th>
        <td><input type="checkbox" name="dictIsEditable" id="dictIsEditable"/></td>
    </tr>
    <tfoot>
    <tr>
        <td colspan="4">
            <input type="button" value="确定" id="sub"/>&nbsp;&nbsp;
            <input type="button" value="返回" onclick="history.back()"/>
        </td>
    </tr>
    </tfoot>
</table>
</form>
</body>
</html>
