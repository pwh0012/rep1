﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title></title>
    <link href="../CSS/style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table class="tableEdit">
        <thead>
            <tr>
                <td colspan="4">客户基本信息</td>
            </tr>
        </thead>
        <tr>
            <th>客户编号：</th>
            <td>
                HK201002120003</td>
            <th>客户经理：</th>
            <td>张三
            </td>
        </tr>
        <tr>
            <th>客户名称：</th>
            <td>
                <input type="text" />
             </td>
            <th>地区：</th>
            <td>
                <select>
                    <option>华北</option>
                    <option>华南</option>
                    <option>中南</option>
                    <option>西北</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>客户等级：</th>
            <td>
                <select>
                    <option>战略合作伙伴</option>
                    <option>合作伙伴</option>
                    <option>大客户</option>
                    <option>普通客户</option>
                </select>
             </td>
            <th></th><td></td>
        </tr>
        <tr>
            <th>客户满意度：</th>
            <td>
                <select>
                    <option>☆</option>
                    <option>☆☆</option>
                    <option>☆☆☆</option>
                    <option>☆☆☆☆</option>
                    <option>☆☆☆☆☆</option>
                </select>
             </td>
            <th>客户信用度：</th>
            <td>
                <select>
                    <option>☆</option>
                    <option>☆☆</option>
                    <option>☆☆☆</option>
                    <option>☆☆☆☆</option>
                    <option>☆☆☆☆☆</option>
                </select>
            </td>
        </tr>
    </table>
    <p></p>
    <table class="tableEdit">
        <thead>
            <tr>
                <td colspan="4">客户联系信息</td>
            </tr>
        </thead>
        <tr>
            <th>地址：</th>
            <td>
                <input type="text" style="width:300px" />
            </td>
            <th>邮编：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>电话：</th>
            <td>
                <input type="text" />
            </td>
            <th>传真：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>网咨：</th>
            <td>
                <input type="text" />
            </td>
            <th></th><td></td>
        </tr>
    </table>
    <p></p>
    <table class="tableEdit">
        <thead>
            <tr>
                <td colspan="4">公司信息</td>
            </tr>
        </thead>
        <tr>
            <th>营业执照号：</th>
            <td>
                <input type="text" />
            </td>
            <th>法人：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>注册资金(万元)：</th>
            <td>
                <input type="text" />
            </td>
            <th>年营业额：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>开户银行：</th>
            <td>
                <input type="text" />
            </td>
            <th>银行账号：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
        <tr>
            <th>地税登记号：</th>
            <td>
                <input type="text" />
            </td>
            <th>国税登记号：</th>
            <td>
                <input type="text" />
            </td>
        </tr>
    </table>
    <p></p>
    <input type="button" value="保存" />&nbsp;&nbsp;
    <input type="button" value="返回" />
</body>
</html>
