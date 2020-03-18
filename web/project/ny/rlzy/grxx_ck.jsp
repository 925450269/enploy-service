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
        function retrunpage() {
            //window.location.href="staffsvl?reqType=returnpage";
            window.history.go(-1);
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;人力资源--&gt;工人管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>


<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">工人资料登记表</td>
    </tr>
</table>
<br>
<table width="96%" height="512" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
       class="text_lb">
    <c:forEach  items="${staffinformationList}" var="staffinformation">
    <tr>
        <td width="118" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
        <td width="284" bgcolor="#FFFFFF">${staffinformation.wid}</td>
        <td width="104" align="right" bgcolor="#FFFFFF">所属公司：</td>
        <td width="289" bgcolor="#FFFFFF">${staffinformation.companyid}</td>
        <td width="138" rowspan="7" align="center" valign="middle" bgcolor="#FFFFFF">
            <img width="120px" height="120px" src="staffsvl?reqType=downloadImg&filename=${staffinformation.photo}">
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
        <td bgcolor="#FFFFFF">${staffinformation.wname}</td>
        <td align="right" bgcolor="#FFFFFF">性别：</td>
        <td bgcolor="#FFFFFF">${staffinformation.wsex}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
        <td bgcolor="#FFFFFF">${staffinformation.idcard}</td>
        <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
        <td bgcolor="#FFFFFF">${staffinformation.birth}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">年龄：</td>
        <td bgcolor="#FFFFFF">${staffinformation.wage}</td>
        <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
        <td bgcolor="#FFFFFF">${staffinformation.hige}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">手机：</td>
        <td bgcolor="#FFFFFF">${staffinformation.cellphone}</td>
        <td align="right" bgcolor="#FFFFFF">电话：</td>
        <td bgcolor="#FFFFFF">${staffinformation.phone}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">工种：</td>
        <td bgcolor="#FFFFFF">${staffinformation.type}</td>
        <td align="right" bgcolor="#FFFFFF">从业时间：</td>
        <td bgcolor="#FFFFFF">${staffinformation.worktime}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
        <td bgcolor="#FFFFFF">${staffinformation.defect}</td>
        <td align="right" bgcolor="#FFFFFF">教育程度：</td>
        <td bgcolor="#FFFFFF">大专&nbsp;</td>

    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">户籍地址：</td>
        <td colspan="4" bgcolor="#FFFFFF">${staffinformation.jhddress}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">现住地址：</td>
        <td colspan="4" bgcolor="#FFFFFF">${staffinformation.address}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">银行卡号：</td>
        <td bgcolor="#FFFFFF">${staffinformation.card}</td>
        <td align="right" bgcolor="#FFFFFF">保险单号：</td>
        <td colspan="2" bgcolor="#FFFFFF">${staffinformation.bxnumber}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">爱好：</td>
        <td colspan="4" bgcolor="#FFFFFF">学习&nbsp;</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">语言：</td>
        <td colspan="4" bgcolor="#FFFFFF">${staffinformation.language}&nbsp;</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">状态：</td>
        <td colspan="4" bgcolor="#FFFFFF">
                ${staffinformation.status}
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况：</td>
        <td colspan="4" bgcolor="#FFFFFF"> ${staffinformation.bxnumber}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">证照状况：</td>
        <td colspan="4" bgcolor="#FFFFFF"> ${staffinformation.hystatus}&nbsp;</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">体检情况：</td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td width="68%" height="28" bgcolor="#FFFFFF">${staffinformation.tjstatus}</td>
                    <td width="11%" align="right" bgcolor="#FFFFFF">体检时间：</td>
                    <td width="21%" bgcolor="#FFFFFF">${staffinformation.tjtime}</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="23" align="right" nowrap bgcolor="#FFFFFF">家庭成员：
            <input type="button" name="button3" id="button3" value="+"/></td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td height="28" bgcolor="#FFFFFF">
                        <div align="center">关系</div>
                    </td>
                    <td height="28" bgcolor="#FFFFFF">
                        <div align="center">姓名</div>
                    </td>
                    <td height="28" bgcolor="#FFFFFF">
                        <div align="center">年龄</div>
                    </td>
                    <td height="28" bgcolor="#FFFFFF">
                        <div align="center">电话</div>
                    </td>
                    <td height="28" bgcolor="#FFFFFF">
                        <div align="center">工作单位(学校)</div>
                    </td>
                </tr>
                <c:forEach items="${staffamilyList}" var="staffamily">
                <tr>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffamily.relation}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffamily.fname}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffamily.fage}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffamily.phone}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffamily.workplace}</td>
                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">个人技能：</td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td height="28" bgcolor="#FFFFFF">${staffinformation.grskills}</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">主要工作经历：
            <input type="button" name="button4" id="button4" value="+"/></td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td width="45%" height="28" bgcolor="#FFFFFF">
                        <div align="center">单位</div>
                    </td>
                    <td width="17%" height="28" bgcolor="#FFFFFF">
                        <div align="center">工种</div>
                    </td>
                    <td width="17%" height="28" bgcolor="#FFFFFF">
                        <div align="center">职务</div>
                    </td>
                    <td width="21%" height="28" bgcolor="#FFFFFF">
                        <div align="center">工作时间</div>
                    </td>
                </tr>
                <c:forEach var="staffexperience" items="${staffexperienceList}">
                <tr>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffexperience.workplace}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffexperience.type}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffexperience.duty}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${staffexperience.worktime}</td>
                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">岗位培训记录：
            <input type="button" name="button5" id="button5" value="+"/></td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td width="42%" height="28" bgcolor="#FFFFFF">
                        <div align="center">培训机构</div>
                    </td>
                    <td width="25%" height="28" bgcolor="#FFFFFF">
                        <div align="center">培训内容</div>
                    </td>
                    <td width="15%" height="28" bgcolor="#FFFFFF">
                        <div align="center">培训情况</div>
                    </td>
                    <td width="18%" height="28" bgcolor="#FFFFFF">
                        <div align="center">培训时间</div>
                    </td>
                </tr>
                <c:forEach items="${stafftrainList}" var="stafftrain">
                <tr>
                    <td height="28" align="center" bgcolor="#FFFFFF">${stafftrain.organization}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${stafftrain.content}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${stafftrain.status}</td>
                    <td height="28" align="center" bgcolor="#FFFFFF">${stafftrain.time}</td>
                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">自我介绍：</td>
        <td colspan="4" bgcolor="#FFFFFF">${staffinformation.jieshao}</td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">人人要求：</td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td width="10%" height="28" align="right" bgcolor="#FFFFFF">时间要求：</td>
                    <td width="37%" height="28" bgcolor="#FFFFFF">${staffinformation.timerequire}</td>
                    <td width="10%" height="28" align="right" bgcolor="#FFFFFF">住宿：</td>
                    <td width="43%" height="28" bgcolor="#FFFFFF">${staffinformation.live}</td>
                </tr>
                <tr>
                    <td height="28" align="right" bgcolor="#FFFFFF">工资要求：</td>
                    <td height="28" bgcolor="#FFFFFF">${staffinformation.salaryrequire}</td>
                    <td height="28" align="right" bgcolor="#FFFFFF">餐饮或其它：</td>
                    <td height="28" bgcolor="#FFFFFF">${staffinformation.eat}</td>
                </tr>
            </table>
        </td>
    </tr>
    </c:forEach>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap>
            <input type="submit" name="searchbtn3" value="返  回" class="button_new" onclick="retrunpage()">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</body>
</html>
