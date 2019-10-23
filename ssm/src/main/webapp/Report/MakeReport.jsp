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
        <span>客户构成分析</span><br />
        根据客户的相关信息显示
    </div>
    <table class="tableEdit">
        <tr>
            <th>
                报表方式：
            </th>
            <td>
                <select>
                    <option selected="selected">按客户等级</option>
                    <option>按信用度</option>
                    <option>按满意度</option>
                </select>
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
            <th>等级</th>
            <th>客户数量</th>
        </tr>
        <tr>
            <td>1</td>
            <td>战略合作伙伴</td>
            <td>3</td>
        </tr>
        <tr>
            <td>2</td>
            <td>合作伙伴</td>
            <td>7</td>
        </tr>
        <tr>
            <td>3</td>
            <td>大客户</td>
            <td>32</td>
        </tr>
        <tr>
            <td>4</td>
            <td>重点开发客户</td>
            <td>16</td>
        </tr>
        <tr>
            <td>5</td>
            <td>普通客户</td>
            <td>42</td>
        </tr>
    </table>
</body>
</html>
