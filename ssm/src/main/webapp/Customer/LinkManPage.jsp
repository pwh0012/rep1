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
    <span>客户联系人管理</span><br />
    管理客户的相关联系人信息
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
        <img src="../images/22.gif" />&nbsp;&nbsp;<a href="LinkManAdd.html?">新建</a>
    </div>
    <table class="dataTable">
                        <tr>
                            <th>
                                姓名
                            </th>
                            <th>
                                性别
                            </th>
                            <th>
                                职位
                            </th>
                            <th>
                                固定电话
                            </th>
                            <th>
                                手机号码
                            </th>
                            <th>备注</th>
                            <th>
                                操作
                            </th>
                        </tr>
                        <tr>
                            <td>
                                张大山
                            </td>
                            <td>
                                男
                            </td>
                            <td>
                                经理
                            </td>
                            <td>
                                0731-8998765
                            </td>
                            <td>
                                13890987653
                            </td>
                            <td></td>
                            <td>
                            <a href="LinkManEdit.htm"><img title="编辑" src="../images/33.gif" style="border:0px"/></a>&nbsp;
                            <img title="删除" src="../images/11.gif" />
                            </td>
                        </tr>
        <tr>
            <td>
                张大山
            </td>
            <td>
                男
            </td>
            <td>
                经理
            </td>
            <td>
                0731-8998765
            </td>
            <td>
                13890987653
            </td>
            <td></td>
            <td>
                <a href="LinkManEdit.htm"><img title="编辑" src="../images/33.gif" style="border:0px" /></a>&nbsp;
                <img title="删除" src="../images/11.gif" />
            </td>
        </tr>
       </table>
    </div>
</body>
</html>
