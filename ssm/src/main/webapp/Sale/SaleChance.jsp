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
    <span>销售机会管理</span><br />
    创建和维护销售机会
</div>
    <table class="tableEdit">
        <tr>
            <th>客户名称：</th>
            <td><input type="text" /></td>
            <th>联系人：</th>
            <td><input type="text" /></td>
            <th>概要：</th>
            <td><input type="text" /></td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="8"><input type="button" value="查询" /></td>
            </tr>
        </tfoot>
    </table>
    <br />
<div id="dataDiv">
    <div id="headDiv">
        <img src="../images/22.gif" />&nbsp;&nbsp;<a href="AddSale.html?1=1">新建</a>
    </div>
    <table class="dataTable">
        <tr>
            <th>客户名称</th>
            <th>概要</th>
            <th>联系人</th>
            <th>联系电话</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>睿智数码</td>
            <td>采购笔记本意向</td>
            <td>张经理</td>
            <td>13729239239</td>
            <td>2011年5月2日</td>
            <td>
            <a href="AllotSale.html"><img title="分配" src="../images/bt_linkman.gif" style="border:0px;width:16px;height:16px" /></a>&nbsp;&nbsp;
            <a href="EditSale.html"><img title="修改" src="../images/edt.gif" style="border:0px"/></a>&nbsp;&nbsp;<img title="删除" src="../images/del.gif" /></td>
        </tr>
        <tr>
            <td>长沙图灵</td>
            <td>台式机电脑大批量采购意向</td>
            <td>宋校</td>
            <td>15876497565</td>
            <td>2011年4月7日</td>
            <td><a href="AllotSale.html"><img title="分配" src="../images/bt_linkman.gif" style="border:0px;width:16px;height:16px" /></a>&nbsp;&nbsp;
            <a href="EditSale.html"><img title="修改" src="../images/edt.gif" style="border:0px"/></a>&nbsp;&nbsp;<img title="删除" src="../images/del.gif" /></td>
        </tr>
        <tr>
            <td>长沙市政府采购处</td>
            <td>电脑桌购买意向</td>
            <td>王主任</td>
            <td>18698709654</td>
            <td>2011年3月2日</td>
            <td><a href="AllotSale.html"><img title="分配" src="../images/bt_linkman.gif" style="border:0px;width:16px;height:16px" /></a>&nbsp;&nbsp;
            <a href="EditSale.html"><img title="修改" src="../images/edt.gif" style="border:0px"/></a>&nbsp;&nbsp;<img title="删除" src="../images/del.gif" /></td>
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
