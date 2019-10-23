﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
     <link href="../CSS/Style4.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        function showMsg() {
            window.showModalDialog("LostMsg.htm?data=" + Math.random(), "参数", "dialogWidth:550px;dialogHeight:400px;help:no");
        }
 </script>
</head>
<body>
 <div id="desDiv">
        <span>客户流失管理</span><br />
        显示即将流失的客户信息，并制定挽救措施
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
                客户经理：
            </th>
            <td>
                <input type="text" />
            </td>
            <th>
                状态：
            </th>
            <td>
                <select>
                    <option selected="selected">全部</option>
                    <option>预警</option>
                    <option>暂缓流失</option>
                    <option>确认流失</option>
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
    <div style="width: 1065px">
        <div>
            <table class="dataTable">
                <tr>
                    <th>
                        客户编号
                    </th>
                    <th>
                        客户名称
                    </th>
                    <th>
                        客户经理
                    </th>
                    <th>
                        最后下单时间
                    </th>
                    <th>
                        确认流失时间
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
                        KH100101
                    </td>
                    <td>
                        睿智数码
                    </td>
                    <td>
                        张三
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td></td>
                    <td>
                        预警
                    </td>
                    <td>
                        <a href="LostPause.html?"><img src="../images/bt_relay.gif" title="暂缓流失" style="border:0px" /></a>
                        <a href="LostEnter.html?"><img src="../images/bt_confirm.gif" title="确认流失" style="border:0px" /></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        KH100101
                    </td>
                    <td>
                        睿智数码
                    </td>
                    <td>
                        张三
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td></td>
                    <td>
                        暂缓流失
                    </td>
                    <td>
                        <a href="LostPause.html?"><img src="../images/bt_relay.gif" title="暂缓流失" style="border:0px" /></a>
                        <a href="LostEnter.html?"><img src="../images/bt_confirm.gif" title="确认流失" style="border:0px" /></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        KH100101
                    </td>
                    <td>
                        睿智数码
                    </td>
                    <td>
                        张三
                    </td>
                    <td>
                        2016年1月1日
                    </td>
                    <td></td>
                    <td>
                        确认流失
                    </td>
                    <td>
                        <a href="LostLook.html?"><img src="../images/bt_plan.gif" title="查看" style="border:0px" /></a>
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
        </div>
    </div>
</body>
</html>
