﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="desDiv">
        <span>客户历史订单</span><br />
        记录客户的历史订单
    </div>
    <table class="tableEdit">
        <tr>
            <th>
                客户编号：
            </th>
            <td>
                KH071202001
            </td>
            <th>
                客户名称：
            </th>
            <td>
                图灵教育
            </td>
        </tr>
    </table>
    <div id="dataDiv">
        <div id="headDiv">
            <img src="../images/22.gif" />&nbsp;&nbsp;<a href="ActivitysAdd.html">新建</a>
        </div>
        <table class="dataTable">
            <tr>
                <th>
                    订单编号
                </th>
                <th>
                    日期
                </th>
                <th>
                    送货地址
                </th>
                <th>
                    状态
                </th>
                <th>
                    操作
                </th>
            </tr>
            <tr>
                <td>
                    43582147
                </td>
                <td>
                    2016-1-1
                </td>
                <td>
                    长沙市河西
                </td>
                <td>
                    未回款
                </td>
                <td>
                    <a href="orderDetail.html?"><img title="详细信息" src="../images/bt_detail.gif" /></a>
                </td>
            </tr>
            <tr>
                <td>
                    43583547
                </td>
                <td>
                    2016-1-1
                </td>
                <td>
                    长沙市河东
                </td>
                <td>
                    已回款
                </td>
                <td>
                    <a href="orderDetail.html?"><img title="详细信息" src="../images/bt_detail.gif" /></a>
                </td>
            </tr>
            <tr>
                <td>
                    4345147
                </td>
                <td>
                    2016-1-1
                </td>
                <td>
                    长沙市岳麓区
                </td>
                <td>
                    已回款
                </td>
                <td>
                    <a href="orderDetail.html?"><img title="详细信息" src="../images/bt_detail.gif" /></a>
                </td>
            </tr>
        </table>
        <div id="pageDiv">
            <div id="leftPage">
                共有120条记录，当前第1/10页
            </div>
            <div id="rightPage">
                <input type="image" src="../images/first.gif" />&nbsp;&nbsp;
                <input type="image" src="../images/back.gif" />&nbsp;&nbsp;
                <input type="image" src="../images/next.gif" />&nbsp;&nbsp;
                <input type="image" src="../images/last.gif" />&nbsp;&nbsp; 转到第<input type="text"
                                                                                      size="1" />&nbsp;&nbsp;<input type="image" src="../images/go.gif" />
            </div>
        </div>
    </div>
</body>
</html>
