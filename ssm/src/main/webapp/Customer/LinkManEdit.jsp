﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table class="tableEdit">
        <thead>
            <tr>
                <td colspan="4">编辑联系人</td>
            </tr>
        </thead>
        <tr>
            <th>姓名：</th>
            <td>
                <input type="text" /></td>
            <th>性别：</th>
            <td>
                <input type="radio" checked="checked" />男&nbsp;&nbsp;<input type="radio" />女
            </td>
        </tr>
        <tr>
            <th>职位：</th>
            <td><input type="text" /></td>
            <th>固定电话：</th>
            <td><input type="text" /></td>
        </tr>
         <tr>
            <th>手机号码：</th>
            <td><input type="text" /></td>
            <th></th>
            <td></td>
        </tr>
        <tr>
            <th>备注：</th>
            <td colspan="3"><textarea></textarea></td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="4">
                    <input type="button" value="确定" />&nbsp;&nbsp;
                    <input type="button" value="关闭"  />
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
