﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function showCustomer() {
            var returnValue = window.showModalDialog("../publicPage/SelectCustomer.htm?data=" + Math.random(), "参数", "dialogWidth:400px;dialogHeight:220px;help:no");
        }
    </script>
</head>
<body>
<table class="tableEdit" style="width:600px;">
        <thead>
            <tr>
                <td colspan="4">创建服务</td>
            </tr>
        </thead>
        <tr>
            <th>客户姓名：</th>
            <td>
                <input type="text" ondblclick="showCustomer()" /></td>
            <th>服务类型：</th>
            <td>
                <select style="width:100px">
                    <option>咨询</option>
                    <option>投诉</option>
                    <option>建议</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>服务概要：</th>
            <td colspan="3">
                <input type="text"  style="width:300px"/>
             </td>
        </tr>
        <tr>
            <th>详细信息：</th>
            <td colspan="3">
                <textarea></textarea>
             </td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="4">
                    <input type="button" value="确定" />&nbsp;&nbsp;
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
