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
                <td colspan="4">编辑客户来往记录</td>
            </tr>
        </thead>
        <tr>
            <th>交往时间：</th>
            <td>
                <input type="text" /></td>
            <th>交往地点：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>概要：</th>
            <td><input type="text" /></td>
            <th>备注：</th>
            <td><input type="text" /></td>
        </tr>
        <tr>
            <th>详细描述：</th>
            <td colspan="3"><textarea></textarea></td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="4">
                    <input type="button" value="确定" />&nbsp;&nbsp;
                    <input type="button" value="关闭" onclick="window.close()" />
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
