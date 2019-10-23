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
    <span>客户交往记录</span><br />
    记录与客户之间的交往信息
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
                                时间
                            </th>
                            <th>
                                地点
                            </th>
                            <th>
                                概要
                            </th>
                            <th>
                                详细信息
                            </th>
                            <th>备注</th>
                            <th>
                                操作
                            </th>
                        </tr>
                        <tr>
                            <td>
                                2011-6-3
                            </td>
                            <td>
                                华天大酒店
                            </td>
                            <td>
                                签订合同
                            </td>
                            <td>
                                ...
                            </td>
                            <td>
                                ...
                            </td>
                            <td>
                            <a href="ActivitysEdit.htm?"><img title="编辑" src="../images/33.gif" style="border:0px"/></a>&nbsp;
                            <img title="删除" src="../images/11.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                2011-4-3
                            </td>
                            <td>
                                公司
                            </td>
                            <td>
                                展览会
                            </td>
                            <td>
                                邀请参与新产品发布
                            </td>
                            <td>
                                ...
                            </td>
                            <td>
                            <a href="ActivitysEdit.htm?"><img title="编辑" src="../images/33.gif" style="border:0px"/></a>&nbsp;
                            <img title="删除" src="../images/11.gif" />
                            </td>
                        </tr>
                    </table>
    </div>
</body>
</html>
