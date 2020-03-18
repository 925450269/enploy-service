<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../js/public.js"></script>
    <script>
        function doDBClick(url, operator, type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }
    </script>
    <style>
        a {
            text-decoration: none
        }
    </style>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;人力资源--&gt;工人管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<form action="${pageContext.request.contextPath}/staffsvl?reqType=querystaff&pageNow=1" method="post">
    <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
        <tr>
            <td width="67%" align="right" class="text" nowrap>&nbsp;姓名：
                <input type="text" name="searchName" size="12" value="${staff.wname}" class="input">
                &nbsp;&nbsp;性别：
                <input type="radio" name="radio" id="radio" value="男">
                男
                <input type="radio" name="radio" id="radio2" value="女">
                女 年龄：
                <input type="number" name="searchName2" size="12" value="${staff.wage}" class="input">
                状态：
                <select name="select" id="select" class="input">
                    <option id="s1">请选择</option>
                    <option id="s2">空闲</option>
                    <option id="s3">忙碌</option>
                </select>
                适合职位：
                <select name="select2" id="select2" class="input">
                    <option id="se1">请选择</option>
                    <option id="se2">保姆</option>
                    <option id="se3">月嫂</option>
                    <option id="se4">家教</option>
                    <option id="se5">钟点工</option>
                </select>
                <input type="submit" name="searchbtn2" value="查  询" class="button_new" >
                <input type="button" name="addbtn2" value="新  增" class="button_new"
                       onClick="javascript:location.href='grxx_xz.htm'">
                <input type="hidden" name="mod" value="no">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="3%">序号</td>
        <td width="12%" align="center" nowrap id=".name"><strong>姓名</strong></td>
        <td width="11%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true"><strong>性别</strong></div>
        </td>
        <td width="12%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true"><strong>年龄</strong></div>
        </td>
        <td width="16%" align="center" nowrap id=".title">
            <div align="center" orderBy="true"><strong>个人技能</strong></div>
        </td>
        <td width="13%" align="center" nowrap id=".register">
            <div align="center" orderBy="true"><strong>个人要求</strong></div>
        </td>
        <td width="9%" align="center" nowrap id=".register"><strong>状态</strong></td>
        <td width="15%" align="center" nowrap id=".submit_date"><strong>录入日期</strong></td>
        <td width="9%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <c:forEach items="${staffList}" var="staff">
        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
            onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
            <td nowrap align="center" width="3%">${staff.wid}</td>
            <td align="center" nowrap>${staff.wname}</td>
            <td height="14" align="center" nowrap>${staff.wsex}</td>
            <td align="center" nowrap>${staff.wage}</td>
            <td align="center" nowrap>${staff.grskills}</td>
            <td align="center" nowrap>${staff.salaryrequire}</td>
            <td align="center" nowrap>${staff.status}</td>
            <td align="center" nowrap>${staff.starttime}&nbsp;</td>
            <td align="center" nowrap>
                <a href="staffsvl?reqType=querystaffinformation&wid=${staff.wid}">查看</a>
                <a href="staffsvl?reqType=updatestaffinformation&wid=${staff.wid}">修改</a></td>
        </tr>
    </c:forEach>
</table>
<table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><input type="hidden" name="orderType" value="asc">
            <input type="hidden" name="orderFid" value=".submit_date">
            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                <tr>
                    <td nowrap width="45%" align="center"> 当前第${pageNow}页 共${totalRecord}记录 分${totalpage}页显示</td>
                    <td id="td1" nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                        <a href="staffsvl?pageNow=1&reqType=querystaffAll">首页</a>
                        <a href="staffsvl?pageNow=${pageNow-1}&reqType=querystaffAll">上一页</a>
                        <a href="staffsvl?pageNow=${pageNow+1}&reqType=querystaffAll">下一页</a>
                        <a href="staffsvl?pageNow=${totalpage}&reqType=querystaffAll">尾页</a>
                        <a href="#" onclick="Jump()">前往</a>
                        <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' id="jumppage"
                               name='pageSelect' value=''/>
                        页
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>
<script>
    function Jump() {
        var jumppage = document.getElementById("jumppage").value;
        window.location.href = "staffsvl?pageNow="+jumppage+"&reqType=querystaffAll";
    }
</script>
</body>
</html>
