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
        <span>客户服务分析</span><br />
        根据客户服务类型显示数据（从高到低排序）
    </div>
    <table class="tableEdit">
        <tr>
            <th>
                年份：
            </th>
            <td>
                <select>
                    <option selected="selected">2016</option>
                    <option>2015</option>
                    <option>2014</option>
                    <option>2013</option>
                    <option>2012</option>
                </select>（说明：最近5年）
            </td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="2">
                    <input type="button" value="查询" />
                </td>
            </tr>
        </tfoot>
    </table>
    <table class="dataTable">
        <tr>
            <th>序号</th>
            <th>条目</th>
            <th>服务数量</th>
        </tr>
        <tr>
            <td>1</td>
            <td>建议</td>
            <td>38</td>
        </tr>
        <tr>
            <td>2</td>
            <td>咨询</td>
            <td>16</td>
        </tr>
        <tr>
            <td>3</td>
            <td>投诉</td>
            <td>8</td>
        </tr>
    </table>
</body>
</html>
