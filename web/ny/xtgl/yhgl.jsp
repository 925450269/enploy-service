<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="../js/public.js"></script>
    <link href="/css/index.css" rel="stylesheet" type="text/css">
    <title>用户管理--列表</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','用户管理--列表')">
<link href="../css/index.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript">
    <!--
    function xiugai() {
        document.forms[0].mod.value = "yes";
        document.forms[0].submit();
    }

    function toInsertDengji() {
        if (document.forms.length > 1) {
            alert("注意:有两个或多个form存在,此方法可能不适用");
            return false;
        }
        var myForm = document.forms[0];
        myForm.mhd.value = "toInsertDengji";
        myForm.submit();
    }

    function toUpdateDengji() {
        if (document.forms.length > 1) {
            alert("注意:有两个或多个form存在,此方法可能不适用");
            return false;
        }
        if (checkSelect_me() == false)
            return false;
        var myForm = document.forms[0];
        myForm.mhd.value = "toUpdateDengji";
        myForm.submit();
    }

    function doDeleteDengji() {
        var count = 0;
        var length = 0;
        try {
            length = document.forms[0].id_1.length;
        } catch (e) {
            alert("没有任何记录！");
            return false;
        }
        if (isNaN(length)) {
            try {
                if (document.forms[0].id_1.checked) {
                    ++count;
                }
            } catch (e) {
            }
        }
        for (var i = 0; i < document.forms[0].id_1.length; i++) {
            if (document.forms[0].id_1[i].checked)
                count++;
        }
        if (count == 0) {
            alert("您没有选择任何记录！");
            return false;
        }
        if (confirm("有" + count + "条记录被选中,您确定要删除吗？") == false) {
            return false;
        }
        document.forms[0].mhd.value = "doDeleteDengji";
        document.forms[0].submit();
        //////////
    }

    //检查是否有选择记录
    function checkSelect_me() {
        var count = 0;
        var length = 0;
        try {
            length = document.forms[0].id_1.length;
        } catch (e) {
            alert("没有任何记录！");
            return false;
        }
        if (isNaN(length)) {
            try {
                if (document.forms[0].id_1.checked) {
                    ++count;
                }
            } catch (e) {
            }
        }

        for (var i = 0; i < document.forms[0].id_1.length; i++) {
            if (document.forms[0].id_1[i].checked)
                count++;
        }
        if (count == 0) {
            alert("您没有选择任何记录！");
            return false;
        } else if (count > 1) {
            alert("请选择单条记录");
            return false;
        }

        return true;
    }


    function selectall() {
        var sl = document.getElementById("sl");
        if (sl.checked) {
            var selectall = document.getElementsByName("select");
            for (var i = 0; i < selectall.length; i++) {
                selectall[i].checked = true;
            }
        } else {
            var selectall = document.getElementsByName("select");
            for (var i = 0; i < selectall.length; i++) {
                selectall[i].checked = false;
            }
        }
    }
    function delSelected() {
        var selectall = document.getElementsByName("select");
        for (var i = 0; i < selectall.length; i++) {
            if (selectall[i].checked ==true) {
                var number=document.getElementsByClassName("number");
                //alert(number[i].innerText)
                window.location.href="accountSvl?reqType=delAccount&number="+number[i].innerText+"&pageNow=${pageNow}&available=${sessionScope.status}&searchValue=${sessionScope.name}";
            }

        }

    }

    //-->
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
    function doDBClick(url, operator) {
        if (operator == false) {
            alert("您没有权限");
        } else {
            document.forms[0].action = url;
            document.forms[0].submit();
        }
    }
</SCRIPT>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;用户管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<table width="100%" height="10" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td></td>
    </tr>
</table>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="23"><img src="../image/red_BODY_left.gif" width="23" height="23"></td>
        <td background="../image/red_BODY_bg.gif">
            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table height="23" border="0" cellpadding="0" cellspacing="0">
                            <tr align="center">
                                <td width="82" class="Column_blue">用户管理</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
    </tr>
</table>
<form name="UserForm" method="post"
      action="${pageContext.request.contextPath}/accountSvl?reqType=queryAccounntByCritria&pageNow=1">
    <table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
        <input type="hidden" name="mhd" value="toList">
        <tr>
            <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
            <td>
                <table width="100%" height="10" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td></td>
                    </tr>
                </table>
                <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0"
                       class="MENU_line">
                    <tr>
                        <td align="left">
                            <input type="radio" id="ra1" name="available" value="所有" checked onClick="choose()">所有
                            <input type="radio" id="ra2" name="available" value="正常" onClick="choose()">正常
                            <input type="radio" id="ra3" name="available" value="禁用" onClick="choose()">禁用
                            <input type="radio" id="ra4" name="available" value="已删除" onClick="choose()">已删除
                        </td>
                        <td width="67%" align="right" class="text" nowrap>&nbsp; 姓名：
                            <input type="text" name="searchValue" maxlength="20" size="12" value="${accountBean.name}"
                                   class="input">
                            <input type="submit" name="searchbtn" value="查询" class="button_new" onclick="colorchange()">
                            <input type="button" name="insert" value="新增"
                                   onClick="javascript:location.href='ny/xtgl/yhgl_xz.jsp';" class="button_new">
                            <input type="button" name="delete" value="删除"
                                   onClick="delSelected()"
                                   class="button_new">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
                <table width="100%" height="10" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td></td>
                    </tr>
                </table>
                <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CAD6E8">
                    <tr align="center" class="tdtitle">
                        <td nowrap align="center" width=10%><input id="sl" type="checkbox" onClick="selectall()"></td>
                        <td nowrap align="center" onClick="orderBy(this)" id=".UIDF">
                            <div align="center" orderBy="true">编号</div>
                        </td>
                        <td nowrap align="center" onClick="orderBy(this)" id=".user_name">
                            <div align="center" orderBy="true">帐号</div>
                        </td>
                        <td align="center" height="24" nowrap onClick="orderBy(this)" id=".trueName">
                            <div align="center" orderBy="true">姓名</div>
                        </td>
                        <td align="center" height="24" nowrap onClick="orderBy(this)" id=".email">
                            <div align="center" orderBy="true">电子邮件</div>
                        </td>
                        <td align="center" nowrap onClick="orderBy(this)" id=".isAvailable">
                            <div align="center" orderBy="true">帐号状态</div>
                        </td>
                        <td align="center" nowrap>操作</td>
                    </tr>
                    <c:forEach items="${accountBeansList}" var="account">
                        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
                            onMouseOut="javascript:changeBgColorOnMouseOut(this);"
                            ondblclick="doDBClick('accountSvl?reqType=queryAccountinformation&number=${account.number}&ck=ck',true);">
                            <td nowrap align="center" width=10%>
                                <input type='checkbox' name="select" value='3'>
                            </td>
                            <td class="number" align="center">${account.number}</td>
                            <td align="center">${account.accountname}</td>
                            <td height="14" align="center">${account.name}</td>
                            <td height="14" align="center">${account.email}</td>
                            <td align="center"><font id="fontcolor">${account.status}</font></td>
                            <td align="center"><a
                                    href="accountSvl?reqType=queryAccountinformation&number=${account.number}&xg=xg&pageNow=${pageNow}">修改</a>
                            </td>

                        </tr>
                    </c:forEach>
                </table>
                <table width="500" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB">
                    <tr></tr>
                </table>
                <table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <input type="hidden" name="orderType" value="asc">
                            <input type="hidden" name="orderFid" value=".UIDF">
                            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                                <tr>
                                    <td nowrap width="45%" align="center">
                                        当前第${pageNow}页 共${totalRecord}记录 分${totalpage}页显示
                                    </td>
                                    <td nowrap width="55%" align="right">
                                        <a href="accountSvl?pageNow=1&reqType=queryAccounntByCritria&available=${accountBean.status}&searchValue=${accountBean.name}">首页</a>
                                        <a href="accountSvl?pageNow=${pageNow-1}&reqType=queryAccounntByCritria&available=${accountBean.status}&searchValue=${accountBean.name}">上一页</a>
                                        <a href="accountSvl?pageNow=${pageNow+1}&reqType=queryAccounntByCritria&available=${accountBean.status}&searchValue=${accountBean.name}">下一页</a>
                                        <a href="accountSvl?pageNow=${totalpage}&reqType=queryAccounntByCritria&available=${accountBean.status}&searchValue=${accountBean.name}">尾页</a>
                                        <a href="#" onclick="Jump()">前往</a>
                                        <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()'
                                               name="pageSelect" id="jumppage" value=''/>页
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                </table>
            </td>
            <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;</td>
        </tr>
    </table>
</form>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="18"><img src="../image/red_BODY_downleft.gif" width="24" height="24"></td>
        <td background="../image/red_BODY_downbg.gif">&nbsp;</td>
        <td width="18"><img src="../image/red_BODY_downright.gif" width="24" height="24"></td>
    </tr>
</table>


</body>

<script>
    if (${accountBean.status=="正常"}) {
        document.getElementById("ra2").checked = true;
        document.getElementById("ra1").checked = false;
        document.getElementById("ra3").checked = false;
        document.getElementById("ra4").checked = false;
    } else if (${accountBean.status=="禁用"}) {
        document.getElementById("ra3").checked = true;
        document.getElementById("ra1").checked = false;
        document.getElementById("ra2").checked = false;
        document.getElementById("ra4").checked = false;
    } else if (${accountBean.status=="已删除"}) {
        document.getElementById("ra4").checked = true;
        document.getElementById("ra1").checked = false;
        document.getElementById("ra2").checked = false;
        document.getElementById("ra3").checked = false;
    } else if (${accountBean.status=="所有"}) {
        document.getElementById("ra1").checked = true;
        document.getElementById("ra2").checked = false;
        document.getElementById("ra3").checked = false;
        document.getElementById("ra4").checked = false;
    }

    function choose() {
        document.forms[0].submit();
    }

    function doUpdateAvailable() {
        var count = 0;
        var length = 0;
        try {
            length = document.forms[0].fid.length;
        } catch (e) {
            alert("没有任何记录！");
            return false;
        }
        if (isNaN(length)) {
            try {
                if (document.forms[0].fid.checked) {
                    ++count;
                }
            } catch (e) {
            }
        }
        for (var i = 0; i < document.forms[0].fid.length; i++) {
            if (document.forms[0].fid[i].checked)
                count++;
        }
        if (count == 0) {
            alert("您没有选择任何记录！");
            return false;
        }
        if (confirm("有" + count + "条记录被选中,您确定要删除吗？") == false) {
            return false;
        }
        document.forms[0].mhd.value = "doUpdateAvailable";
        document.forms[0].submit();
    }


    function toDistribute(uid) {
        document.forms[0].mhd.value = "toDistribute";
        var url = document.forms[0].action;
        var keyValue = "fid=" + uid;
        var index = url.indexOf("?");
        if (index < 0) {
            url = url + "?" + keyValue;
        } else {
            url = url + "&" + keyValue;
        }
        document.forms[0].action = url;
        document.forms[0].submit();
    }

    function toUpdate(uid) {
        document.forms[0].mhd.value = "toUpdate";
        var url = document.forms[0].action;
        var keyValue = "fid=" + uid;
        var index = url.indexOf("?");
        if (index < 0) {
            url = url + "?" + keyValue;
        } else {
            url = url + "&" + keyValue;
        }
        document.forms[0].action = url;
        document.forms[0].submit();
    }

    //document.getElementsByName("available")[1].click();

    function Jump() {
        var jumppage = document.getElementById("jumppage").value;
        if (jumppage == null || jumppage == "") {
            jumppage = 1;
        }
        window.location.href = "accountSvl?pageNow=" + jumppage + "&reqType=queryAccounntByCritria&available=${accountBean.status}&searchValue=${accountBean.name}";
    }

</script>
</html>


</body>
</html>