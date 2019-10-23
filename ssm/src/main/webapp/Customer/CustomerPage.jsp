﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Style4.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="desDiv">
        <span>客户信息管理</span><br />
        维护客户信息，记录客户联系电话和交往记录
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
                客户编号：
            </th>
            <td>
                <input type="text" />
            </td>
            <th>
                地区：
            </th>
            <td>
                <select>
                    <option selected="selected">全部</option>
                    <option>华北</option>
                    <option>华南</option>
                    <option>中南</option>
                    <option>西北</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                客户经理：
            </th>
            <td>
                <input type="text" />
            </td>
            <th>
                客户等级：
            </th>
            <td>
                <select>
                    <option selected="selected">全部</option>
                    <option>战略合作伙伴</option>
                    <option>合作伙伴</option>
                    <option>大客户</option>
                    <option>普通客户</option>
                </select>
            </td>
            <th></th><td></td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="8">
                    <input type="button" value="查询" />
                </td>
            </tr>
        </tfoot>
    </table>
    <br />
            <table class="dataTable">
                <tr>
                    <th>
                        客户编号
                    </th>
                    <th>
                        客户名称
                    </th>
                    <th>
                        地区
                    </th>
                    <th>
                        客户经理
                    </th>
                    <th>
                        客户等级
                    </th>
                    <th>
                        建立时间
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                <tr>
                    <td>
                        KH100101
                    </td>
                    <td>
                        睿智数码
                    </td>
                    <td>
                        华北
                    </td>
                    <td>
                        张三
                    </td>
                    <td>
                        合作伙伴
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td>
                        <a href="CustomerEdit.htm?"><img src="../images/33.gif" title="编辑" style="border:0px" /></a>
                        <a href="LinkManPage.htm?"><img src="../images/bt_linkman.gif" title="联系人" style="border:0px;width:16px;height:16px" /></a>
                        <a href="ActivitysPage.htm?"><img src="../images/bt_acti.gif" title="交往记录" style="border:0px" /></a>
                        <a href="OrderPage.html?"><img src="../images/bt_orders.gif" title="历史订单" style="border:0px" /></a>
                        <img src="../images/bt_del.gif" title="删除" style="border:0px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        KH110511
                    </td>
                    <td>
                        北京大学
                    </td>
                    <td>
                        中南
                    </td>
                    <td>
                        李四
                    </td>
                    <td>
                        大客户
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td>
                        <a href="CustomerEdit.htm?"><img src="../images/33.gif" title="编辑" style="border:0px" /></a>
                        <a href="LinkManPage.htm?"><img src="../images/bt_linkman.gif" title="联系人" style="border:0px;width:16px;height:16px" /></a>
                        <a href="ActivitysPage.htm?"><img src="../images/bt_acti.gif" title="交往记录" style="border:0px" /></a>
                        <a href="OrderPage.html?"><img src="../images/bt_orders.gif" title="历史订单" style="border:0px" /></a>
                        <img src="../images/bt_del.gif" title="删除" style="border:0px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        KH090123
                    </td>
                    <td>
                        清华大学
                    </td>
                    <td>
                        西北
                    </td>
                    <td>
                        王五
                    </td>
                    <td>
                        大客户
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td>
                        <a href="CustomerEdit.htm?"><img src="../images/33.gif" title="编辑" style="border:0px" /></a>
                        <a href="LinkManPage.htm?"><img src="../images/bt_linkman.gif" title="联系人" style="border:0px;width:16px;height:16px" /></a>
                        <a href="ActivitysPage.htm?"><img src="../images/bt_acti.gif" title="交往记录" style="border:0px" /></a>
                        <a href="OrderPage.html?"><img src="../images/bt_orders.gif" title="历史订单" style="border:0px" /></a>
                        <img src="../images/bt_del.gif" title="删除" style="border:0px" />
                    </td>
                </tr>
            </table>
            <div id="pageDiv">
                <div id="leftPage">
                    共有120条记录，当前第1/10页</div>
                <div id="rightPage">
                    <input type="image" src="../images/first.gif" />&nbsp;&nbsp;
                    <input type="image" src="../images/back.gif" />&nbsp;&nbsp;
                    <input type="image" src="../images/next.gif" />&nbsp;&nbsp;
                    <input type="image" src="../images/last.gif" />&nbsp;&nbsp; 转到第<input type="text"
                        size="1" />&nbsp;&nbsp;<input type="image" src="../images/go.gif" />
                </div>
            </div>
</body>
</html>
