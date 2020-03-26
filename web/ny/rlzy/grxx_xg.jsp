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
    <script type="text/javascript" src="../tdp/js/"></script>
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
<form action="${pageContext.request.contextPath}/staffsvl?reqType=modstaff&pageNow=${requestScope.pageNow}&searchName=${sessionScope.name}&searchName2=${sessionScope.age}&select=${sessionScope.status}&select2=${sessionScope.grskills}&radio=${sessionScope.radio}&page=${requestScope.page}" method="post">
<table width="96%" height="512" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
       class="text_lb">
    <c:forEach items="${staffinformationList}" var="staffinformation">
        <tr>
            <td width="106" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
            <td width="280" bgcolor="#FFFFFF">
                <input name="textarea" type="text" id="textarea" value="${staffinformation.wid}" size="30"
                       class="pi" readonly></td>
            <td width="116" align="right" bgcolor="#FFFFFF">所属公司：</td>
            <td width="296" bgcolor="#FFFFFF">
                <input name="textarea4" type="text" id="textarea4" value="${staffinformation.cid}" size="30"
                       class="pi"></td>
            <td width="135" rowspan="6" align="center" valign="middle" bgcolor="#FFFFFF">
                <img width="100px" height="100px" src="staffsvl?reqType=downloadImg&filename=${staffinformation.photo}">
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
            <td bgcolor="#FFFFFF">
                <input name="textarea2" type="text" id="textarea2" value="${staffinformation.wname}" size="30"
                       class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">性别：</td>
            <td bgcolor="#FFFFFF">
                <input type="radio" name="radiosex" id="radio" value="男">
                男
                <input type="radio" name="radiosex" id="radio2" value="女">
                女
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
            <td bgcolor="#FFFFFF">
                <input name="textarea11" type="text" id="textarea11" value="${staffinformation.idcard}" size="30"
                       class="pi">
            </td>
            <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
            <td bgcolor="#FFFFFF">
                <input name="textarea3" type="text" id="textarea3" value="${staffinformation.birth}" size="30"
                       class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">年龄：</td>
            <td bgcolor="#FFFFFF">
                <input name="textarea5" type="text" id="textarea5" value="${staffinformation.wage}" size="30"
                       class="pi"></td>
            <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
            <td bgcolor="#FFFFFF">
                <input name="textarea8" type="text" id="textarea8" value="${staffinformation.hige}" size="30"
                       class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">手机：</td>
            <td bgcolor="#FFFFFF"><input name="textarea61" type="text" id="textarea6"
                                         value="${staffinformation.cellphone}" size="30" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">电话：</td>
            <td bgcolor="#FFFFFF"><input name="textarea62" type="text" id="textarea6" value="${staffinformation.phone}"
                                         size="30" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">工种：</td>
            <td bgcolor="#FFFFFF"><input name="textarea63" type="text" id="textarea6" value="${staffinformation.type}"
                                         size="30" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">从业时间：</td>
            <td bgcolor="#FFFFFF"><input name="textarea7" type="text" id="textarea7"
                                         value="${staffinformation.worktime}" size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
            <td bgcolor="#FFFFFF"><input name="textarea10" type="text" id="textarea10"
                                         value="${staffinformation.defect}" size="30" class="pi">
            </td>
            <td align="right" bgcolor="#FFFFFF">教育程度：</td>
            <td colspan="2" bgcolor="#FFFFFF">
                <input type="radio" name="radi" id="radio31" value="radio" checked/>
                大专&nbsp;
                <input type="radio" name="radi" id="radio32" value="radio"/>
                高中&nbsp;
                <input type="radio" name="radi" id="radio33" value="radio"/>
                初中&nbsp;
                <input type="radio" name="radi" id="radio34" value="radio"/>
                小学&nbsp;
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">户籍地址：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input name="textarea12" type="text" id="textarea12" value="${staffinformation.jhddress}" size="65"
                       class="pi">
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">现住地址：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input name="textarea13" type="text" id="textarea13" value="${staffinformation.address}" size="65"
                       class="pi">
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">银行卡号：</td>
            <td bgcolor="#FFFFFF"><input name="textarea14" type="text" id="textarea14" value="${staffinformation.card}"
                                         size="30" class="pi">
            </td>
            <td align="right" bgcolor="#FFFFFF">保险单号：</td>
            <td bgcolor="#FFFFFF"><input name="textarea15" type="text" id="textarea15"
                                         value="${staffinformation.bxnumber}" size="30" class="pi">
            </td>
            <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">爱好：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="checkbox" id="checkbox" checked/>
                唱歌&nbsp;
                <input type="checkbox" name="checkbox" id="checkbox"/>
                舞蹈&nbsp;
                <input type="checkbox" name="checkbox" id="checkbox"/>
                乐器&nbsp;
                <input type="checkbox" name="checkbox" id="checkbox"/>
                体育&nbsp;
                <input type="checkbox" name="checkbox" id="checkbox"/>
                书法&nbsp;
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">语言：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="checkbox2" id="checkbox1" value="普通话"/>
                普通话&nbsp;
                <input type="checkbox" name="checkbox2" id="checkbox2" value="广州话"/>
                广州话&nbsp;
                <input type="checkbox" name="checkbox2" id="checkbox3" value="英语"/>
                英语
                其它语言：&nbsp;
                <input name="textarea16" type="text" id="textarea16" size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">状态：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="radio" name="rad" id="radio4" value="在岗"/>
                在岗&nbsp;&nbsp;
                <input type="radio" name="rad" id="radio5" value="待岗"/>
                待岗&nbsp;&nbsp;
                <input type="radio" name="rad" id="radio6" value="其它"/>
                其它：&nbsp;
                <input name="textarea17" type="text" id="textarea17"  size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="radio" name="ra" id="radio7" value="已婚"/>
                已婚&nbsp;
                <input type="radio" name="ra" id="radio8" value="未婚"/>
                未婚&nbsp;&nbsp;
                <input type="radio" name="ra" id="radio9" value="离异"/>
                离异&nbsp;
                <input type="radio" name="ra" id="radio10" value="丧偶"/>
                丧偶&nbsp;&nbsp;
                <input type="radio" name="ra" id="radio11" value="其它"/>
                其它：&nbsp;
                <input name="textarea18" type="text" id="textarea18"  size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">证照状况：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="checkbox4" id="checkbox41" value="计生证"/>
                计生证&nbsp;
                <input type="checkbox" name="checkbox4" id="checkbox42" value="健康证"/>
                健康证&nbsp;&nbsp;
                <input type="checkbox" name="checkbox4" id="checkbox43" value="暂住证"/>
                暂住证&nbsp;&nbsp;
                <input type="checkbox" name="checkbox4" id="checkbox44" value="上岗证"/>
                上岗证
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">体检情况：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                    <tr>
                        <td width="68%" height="28" bgcolor="#FFFFFF">
                            <input type="checkbox" name="checkbox5" id="checkbox51" value="肝功"/>
                            肝功&nbsp;
                            <input type="checkbox" name="checkbox5" id="checkbox52" value="胸透"/>
                            胸透&nbsp;&nbsp;
                            <input type="checkbox" name="checkbox5" id="checkbox53" value="皮肤妇科"/>
                            皮肤妇科
                            &nbsp;&nbsp;其它：
                            <input name="textarea19" type="text" id="textarea19" value="" size="25" class="pi"></td>
                        <td width="11%" align="right" bgcolor="#FFFFFF">体检时间：</td>
                        <td width="21%" bgcolor="#FFFFFF">
                            <input name="textarea20" type="text" id="textarea20" value="${staffinformation.tjtime}" size="16" class="pi"></td>
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
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea21" type="text"
                                   id="textarea21" value="${staffamily.relation}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea22" type="text"
                                   id="textarea22" value="${staffamily.fname}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea23" type="text"
                                   id="textarea23" value="${staffamily.fage}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea24" type="text"
                                   id="textarea24" value="${staffamily.phone}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea25" type="text"
                                   id="textarea25" value="${staffamily.workplace}" size="18"
                                   class="pi"></td>
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
                        <td height="28" bgcolor="#FFFFFF">
                        <input name="textarea26" type="text" id="textarea26" size="100" value="${staffinformation.grskills}" class="pi"></td>
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
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea27" type="text"
                                   id="textarea27" value="${staffexperience.workplace}" size="40"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea28" type="text"
                                   id="textarea28" value="${staffexperience.type}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea29" type="text"
                                   id="textarea29" value="${staffexperience.duty}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea30" type="text"
                                   id="textarea30" value="${staffexperience.worktime}" size="18"
                                   class="pi"></td>
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
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea31" type="text"
                                   id="textarea31" value="${stafftrain.organization}" size="40"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea32" type="text"
                                   id="textarea32" value="${stafftrain.content}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea33" type="text"
                                   id="textarea33" value="${stafftrain.status}" size="18"
                                   class="pi"></td>
                        <td height="28" align="center" bgcolor="#FFFFFF">
                            <input name="textarea34" type="text"
                                   id="textarea34" value="${stafftrain.time}" size="18"
                                   class="pi"></td>
                    </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">自我介绍：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <textarea name="textarea35" id="textarea35" cols="60" rows="5">${staffinformation.jieshao}</textarea>
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">人人要求：</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
                    <tr>
                        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">时间要求：</td>
                        <td width="37%" height="28" bgcolor="#FFFFFF">
                            <input name="textarea36" type="text"
                                   id="textarea36" value="${staffinformation.timerequire}" size="40"
                                   class="pi"></td>
                        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">住宿：</td>
                        <td width="43%" height="28" bgcolor="#FFFFFF">
                            <input name="textarea39" type="text"
                                   id="textarea39" value="${staffinformation.live}" size="40"
                                   class="pi"></td>
                    </tr>
                    <tr>
                        <td height="28" align="right" bgcolor="#FFFFFF">工资要求：</td>
                        <td height="28" bgcolor="#FFFFFF">
                            <input name="textarea37" type="text" id="textarea37" value="${staffinformation.salaryrequire}"
                                   size="40" class="pi"></td>
                        <td height="28" align="right" bgcolor="#FFFFFF">餐饮或其它：</td>
                        <td height="28" bgcolor="#FFFFFF">
                            <input name="textarea38" type="text" id="textarea38" value="${staffinformation.eat}"
                                   size="40" class="pi"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <script>
            if (${staffinformation.wsex=="男"}) {
                document.getElementById("radio").checked = true;
                document.getElementById("radio2").checked = false;
            } else if (${staffinformation.wsex=="女"}) {
                document.getElementById("radio").checked = false;
                document.getElementById("radio2").checked = true;
            }
            if (${staffinformation.language=="普通话"}) {
                document.getElementById("checkbox1").checked = true;
            } else if (${staffinformation.language=="广州话"}) {
                document.getElementById("checkbox2").checked = true;
            } else if (${staffinformation.language=="英语"}) {
                document.getElementById("checkbox3").checked = true;
            } else if (${staffinformation.language=="普通话广州话"}) {
                document.getElementById("checkbox1").checked = true;
                document.getElementById("checkbox2").checked = true;
            }else if (${staffinformation.language=="普通话英语"}) {
                document.getElementById("checkbox1").checked = true;
                document.getElementById("checkbox3").checked = true;
            }else if (${staffinformation.language=="广州话英语"}) {
                document.getElementById("checkbox2").checked = true;
                document.getElementById("checkbox3").checked = true;
            }else if (${staffinformation.language=="普通话广州话英语"}) {
                document.getElementById("checkbox1").checked = true;
                document.getElementById("checkbox2").checked = true;
                document.getElementById("checkbox3").checked = true;
            } else {
                document.getElementById("textarea16").value = "${staffinformation.language}";
            }
            if (${staffinformation.status=="在岗"}) {
                document.getElementById("radio4").checked = true;
                document.getElementById("radio5").checked = false;
            } else if (${staffinformation.status=="待岗"}) {
                document.getElementById("radio5").checked = true;
                document.getElementById("radio4").checked = false;
            } else {
                document.getElementById("radio6").checked = true;
                document.getElementById("textarea17").value = "${staffinformation.status}";
            }
            if (${staffinformation.hystatus=="已婚"}) {
                document.getElementById("radio7").checked = true;
            } else if (${staffinformation.hystatus=="未婚"}) {
                document.getElementById("radio8").checked = true;
            } else if (${staffinformation.hystatus=="离异"}) {
                document.getElementById("radio9").checked = true;
            } else if (${staffinformation.hystatus=="丧偶"}) {
                document.getElementById("radio10").checked = true;
            } else {
                document.getElementById("radio11").checked = true;
                document.getElementById("textarea18").value = "${staffinformation.hystatus}";
            }
            if (${staffinformation.zjstatus=="计生证"}) {
                document.getElementById("checkbox41").checked = true;
            } else if (${staffinformation.zjstatus=="健康证"}) {
                document.getElementById("checkbox42").checked = true;
            } else if (${staffinformation.zjstatus=="暂住证"}) {
                document.getElementById("checkbox43").checked = true;
            } else if (${staffinformation.zjstatus=="上岗证"}) {
                document.getElementById("checkbox44").checked = true;
            }
            if (${staffinformation.tjstatus=="肝功"}) {
                document.getElementById("checkbox51").checked = true;
            } else if (${staffinformation.tjstatus=="胸透"}) {
                document.getElementById("checkbox52").checked = true;
            } else if (${staffinformation.tjstatus=="皮肤妇科"}) {
                document.getElementById("checkbox53").checked = true;
            } else {
                document.getElementById("textarea19").value = "${staffinformation.tjstatus}";
            }

        </script>
    </c:forEach>
</table>
<table width="96%" height="104" border="0" align="center" class="text_lb">
    <tr>
        <td width="126" height="23" align="right">个人声明：</td>
        <td width="1146">1、本资料由所属公司提供，本人保证所填资料属实。</td>
    </tr>
    <tr>
        <td height="23">&nbsp;</td>
        <td>2、本人保证从无任何刑事记录。</td>
    </tr>
    <tr>
        <td height="23">&nbsp;</td>
        <td>3、如有虚假或伪造资料，一切责任自负。</td>
    </tr>
    <tr>
        <td height="23">&nbsp;</td>
        <td>4、本人同意将资料公布在96909系统。</td>
    </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap>
            <input type="submit" name="searchbtn3" value="保  存"
                   class="button_new">
            <input type="button" name="searchbtn3" value="返  回" class="button_new"
                   onclick="retrunpage()">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
</body>
</html>
