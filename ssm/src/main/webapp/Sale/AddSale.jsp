﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <table class="tableEdit">
        <thead>
            <tr>
                <td colspan="4">销售机会添加</td>
            </tr>
        </thead>
        <tr>
            <th>客户名称：</th>
            <td>
                <input type="text" />
            </td>
            <th>机会来源</th>
            <td><input type="text" /></td>
        </tr>
        <tr>
            <th>成功几率：</th>
            <td>
                <input type="text" />
            </td>
            <th></th>
            <td></td>
        </tr>
        <tr>
            <th>联系人：</th>
            <td><input type="text" /></td>
            <th>联系电话：</th>
            <td><input type="text" /></td>
        </tr>
        <tr>
            <th>概要：</th>
            <td colspan="3"><input type="text" style="width:500px" /></td>
        </tr>
        <tr>
            <th>机会描述：</th>
            <td colspan="3"><textarea style="width:500px"></textarea></td>
        </tr>
        <tr>
            <th>创建人</th>
            <td><input type="text" readonly="readonly" value="admin" /></td>
            <th>创建时间</th>
            <td><input type="text" readonly="readonly" value="2016-1-1" /></td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="4">
                    <input type="button" value="确定并返回" />&nbsp;&nbsp;
                    <input type="button" value="确定并继续" />&nbsp;&nbsp;
                    <input type="button" value="返回" />
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
