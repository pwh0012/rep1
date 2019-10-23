﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="desDiv">
    <span>服务反馈</span><br />
    对于客户提出的咨询、建议、投诉等服务进行处理完毕后，记录客户对服务的结果的满意度等
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
                概要：
            </th>
            <td>
                <input type="text" />
            </td>
            <th>
                服务类型：
            </th>
            <td>
                <select>
                    <option selected="selected">全部</option>
                    <option>咨询</option>
                    <option>投诉</option>
                    <option>建议</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                创建日期：
            </th>
            <td colspan="3">
                <input type="text" />&nbsp;-&nbsp;<input type="text" />
            </td>
            <th>
                状态：
            </th>
            <td>
                <select>
                    <option>全部</option>
                    <option>新创建</option>
                    <option>已分配</option>
                    <option selected="selected">已处理</option>
                    <option>已反馈</option>
                    <option>已归档</option>
                </select>
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
<div id="dataDiv">
    <div id="headDiv">
    </div>
    <table class="dataTable">
        <tr>
            <th>客户名称</th>
            <th>概要</th>
            <th>服务类型</th>
            <th>创建时间</th>
            <th>分配人</th>
            <th>分配时间</th>
            <th>处理</th>
        </tr>
        <tr>
            <td>睿智数码</td>
            <td>询问收音机订单运费承担方式</td>
            <td>咨询</td>
            <td>2016年1月1日</td>
            <td>张三</td>
            <td>2016年1月1日</td>
            <td><a href="ServiceResultDialog.htm?1=1"><img src="../images/bt_feedback.gif" style="border:0px" /></a></td>
        </tr>
    </table>
    <div id="pageDiv">
        <div id="leftPage">共有120条记录，当前第1/10页</div>
        <div id="rightPage">
            <input type="image" src="../images/first.gif" />&nbsp;&nbsp;
            <input type="image" src="../images/back.gif" />&nbsp;&nbsp;
            <input type="image" src="../images/next.gif" />&nbsp;&nbsp;
            <input type="image" src="../images/last.gif" />&nbsp;&nbsp;
            转到第<input type="text" size="1" />&nbsp;&nbsp;<input type="image" src="../images/go.gif" />
        </div>
    </div>
</div>
</body>
</html>
