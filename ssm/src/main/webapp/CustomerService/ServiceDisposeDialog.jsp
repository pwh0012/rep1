﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table class="tableEdit" style="width:500px;">
        <thead>
            <tr>
                <td colspan="4">服务信息（状态：已分配）</td>
            </tr>
        </thead>
        <tr>
            <th>客户名称：</th>
            <td>AA公司</td>
            <th>服务类型：</th>
            <td>
                投诉
            </td>
        </tr>
        <tr>
            <th>服务概要：</th>
            <td colspan="3">
               质量问题
             </td>
        </tr>
        <tr>
            <th>详细信息：</th>
            <td colspan="3">
                购买的商品出现质量问题
             </td>
        </tr>
    <tr>
        <th>创建人：</th>
        <td>
            张三
        </td>
        <th>创建时间：</th>
        <td>
            2016-1-1
        </td>
    </tr>
    <tr>
        <th>分配人：</th>
        <td>
            张三
        </td>
        <th>分配时间：</th>
        <td>
            2016-1-1
        </td>
    </tr>
    </table>
 <table class="tableEdit" style="width:500px;">
        <thead>
            <tr>
                <td colspan="4">服务处理</td>
            </tr>
        </thead>
        <tr>
            <th>服务处理：</th>
            <td colspan="3">
               <textarea></textarea>
             </td>
        </tr>
         <tfoot>
            <tr>
                <td colspan="4">
                     <input type="button" value="确定" />&nbsp;&nbsp;
                     <input type="button" value="返回"  />
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
