﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/Style1.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style2.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        function showOk() {
            window.showModalDialog("SaleOk.htm?data=" + Math.random(), "参数", "dialogWidth:550px;dialogHeight:400px;help:no");
        }
        function showNo() {
            window.showModalDialog("SaleNo.htm?data=" + Math.random(), "参数", "dialogWidth:550px;dialogHeight:400px;help:no");
        }
 </script>
</head>
<body>
<div id="desDiv">
    <span>客户开发计划</span><br />
    制定客户开发计划和记录开发进度
</div>
    <table class="tableEdit">
        <tr>
            <th>客户名称：</th>
            <td><input type="text" /></td>
            <th>联系人：</th>
            <td><input type="text" /></td>
        </tr>
        <tr>
            <th>概要：</th>
            <td><input type="text" /></td>
            <th>开发状态：</th>
            <td>
                <select>
                    <option selected="selected">全部</option>
                    <option>开发中</option>
                    <option>开发成功</option>
                    <option>开发失败</option>
                </select>
            </td>
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
    </div>
    <table class="dataTable">
        <tr>
            <th>客户名称</th>
            <th>概要</th>
            <th>联系人</th>
            <th>联系电话</th>
            <th>创建时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>睿智数码</td>
            <td>采购笔记本意向</td>
            <td>张经理</td>
            <td>13729239239</td>
            <td>2011年5月2日</td>
            <td>开发中</td>
            <td>
            <a href="SetPlay.html"><img title="制定计划" src="../images/bt_plan.gif" style="border:0px" /></a>
                <a href="ExecPlay.html"><img title="执行计划" src="../images/bt_feedback.gif" style="border:0px" /></a>
                <a href="#"><img title="开发成功" src="../images/bt_yes.gif" style="border:0px" /></a>
                <a href="#"><img title="开发终止" src="../images/11.gif" style="border:0px" /></a>
            </td>
        </tr>
        <tr>
            <td>图灵教育</td>
            <td>台式机电脑大批量采购意向</td>
            <td>张总</td>
            <td>15876497565</td>
            <td>2011年4月7日</td>
            <td>开发成功</td>
            <td>
                <a href="LookPlay.html"><img title="查看" src="../images/bt_orders.gif" />
                </a></td>
        </tr>
        <tr>
            <td>长沙市政府采购处</td>
            <td>电脑桌购买意向</td>
            <td>王主任</td>
            <td>18698709654</td>
            <td>2011年3月2日</td>
            <td>开发失败</td>
            <td>
                <a href="LookPlay.html"><img title="查看" src="../images/bt_orders.gif" />
                </a></td>
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
