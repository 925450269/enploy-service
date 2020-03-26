<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE1 {
        font-size: 24px;
        font-weight: bold;
    }

    -->
</style>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../tdp/js/validator.js"></script>
    <script type="text/javascript" src="../tdp/js/public.js"></script>
    <script type="text/javascript" src="../javascript/handleArchive.js"></script>
    <script language="JavaScript">
        function doDBClick(url, operator, type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }
        function returnpage() {
            window.history.go(-1);
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;用户管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<br>

<table width="96%" height="97" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
       class="text_lb">
    <c:forEach var="account" items="${accountinformation}">
    <tr>
        <td width="67" height="23" align="right" bgcolor="#FFFFFF">帐 号：</td>
        <td width="296" bgcolor="#FFFFFF">
            <input name="textarea" type="text" id="textarea" value="${account.accountname}" size="30" class="pi">
            <span id="username_notice" style="color: red;"></span>
        </td>
        <td width="84" align="right" bgcolor="#FFFFFF">姓 名：</td>
        <td width="317" bgcolor="#FFFFFF">
            <input name="textarea4" type="text" id="textarea4" value="${account.name}" size="30" class="pi">
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">性别：</td>
        <td bgcolor="#FFFFFF">
            <input id="sex1" type="radio" name="sex" value="男">男
            <input id="sex2" type="radio" name="sex" value="女">女
        </td>
        <td align="right" bgcolor="#FFFFFF">所属公司级别：</td>
        <td bgcolor="#FFFFFF"><span class="text">
        <select name="select" id="select" class="input" >
          <option >请选择</option>
		  <option id="i1">总公司</option>
		  <option id="i2">分公司</option>
        </select>
      </span></td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">密码：</td>
        <td bgcolor="#FFFFFF">
            <input name="textarea3" type="password" id="textarea3" value="${account.password}" size="30" class="pi">
        </td>
        <td align="right" bgcolor="#FFFFFF">确认密码：</td>
        <td bgcolor="#FFFFFF">
            <input name="textarea5" type="password" id="textarea5" value="${account.password}" size="30" class="pi">
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">是否可用：</td>
        <td bgcolor="#FFFFFF">
            <input type="radio" name="rad" id="radio3" value="正常">正常
            <input type="radio" name="rad" id="radio4" value="禁用">禁用
        </td>
        <td align="right" bgcolor="#FFFFFF">邮 箱：</td>
        <td bgcolor="#FFFFFF">
            <input name="textarea41" type="text" id="textarea4" value="${account.email}" size="30" class="pi">
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">账号之所属公司：</td>
        <td bgcolor="#FFFFFF" colspan="3">
            <input name="textarea42" type="number" id="textarea4" value="${account.number_company}" size="30" class="pi">
        </td>
    </tr>
        <script>
            if (${account.sex=="男"}){
                document.getElementById("sex1").checked=true;
                document.getElementById("sex2").checked=false;
            }else {
                document.getElementById("sex1").checked=false;
                document.getElementById("sex2").checked=true;
            }
            if (${account.company_rank=="总公司"}){
                document.getElementById("i1").selected=true;
            }else {
                document.getElementById("i2").selected=true;
            }
            if (${account.status=="正常"}){
                document.getElementById("radio3").checked=true;
            }if (${account.status=="禁用"}){
                document.getElementById("radio4").checked=true;
            }
        </script>
    </c:forEach>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap>
            <input type="button" name="searchbtn3" value="返  回" class="button_new"
                   onClick="returnpage()">&nbsp;&nbsp;
        </td>
    </tr>
</table>
</body>
</html>
