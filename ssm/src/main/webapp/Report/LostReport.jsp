﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../CSS/Style2.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="desDiv">
        <span>客户流失分析</span><br />
        查询显示流失客户相关信息
    </div>
    <table class="tableEdit">
        <tr>
            <th>
                客户名称：
            </th>
            <td>
                <input type="text" />
            </td>
            <th>
                客户经理：
            </th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="4">
                    <input type="button" value="查询" />
                </td>
            </tr>
        </tfoot>
    </table>
    <table class="dataTable">
        <tr>
            <th>序号</th>
            <th>年份</th>
            <th>客户</th>
            <th>客户经理</th>
            <th>流失原因</th>
        </tr>
        <tr>
            <td>1</td>
            <td>2016</td>
            <td>AA公司</td>
            <td>张三</td>
            <td>公司被收购</td>
        </tr>
        <tr>
            <td>2</td>
            <td>2016</td>
            <td>BB公司</td>
            <td>张三</td>
            <td>公司转型</td>
        </tr>
        <tr>
            <td>3</td>
            <td>2016</td>
            <td>CC公司</td>
            <td>张三</td>
            <td>公司破产</td>
        </tr>
    </table>
</body>
</html>
