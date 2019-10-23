﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../CSS/Style2.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="desDiv">
        <span>客户贡献分析</span><br />
        查看客户的销售总金额（从高到低排序）
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
                <td colspan="8">
                    <input type="button" value="查询" />
                </td>
            </tr>
        </tfoot>
    </table>
    <table class="dataTable">
        <tr>
            <th>序号</th>
            <th>客户姓名</th>
            <th>订单金额(元)</th>
        </tr>
        <tr>
            <td>1</td>
            <td>AA公司</td>
            <td>1900000</td>
        </tr>
        <tr>
            <td>2</td>
            <td>BB公司</td>
            <td>1800000</td>
        </tr>
        <tr>
            <td>3</td>
            <td>CC公司</td>
            <td>1700000</td>
        </tr>
        <tr>
            <td>4</td>
            <td>DD公司</td>
            <td>1600000</td>
        </tr>
        <tr>
            <td>5</td>
            <td>EE公司</td>
            <td>1500000</td>
        </tr>
        <tr>
            <td>6</td>
            <td>FF公司</td>
            <td>1400000</td>
        </tr>
    </table>
</body>
</html>
