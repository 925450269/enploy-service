﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<script type="text/javascript" src="../js/public.js"></script>
<link href="../css/index.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>数据字典--列表</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','数据字典--列表')">
<form name="DataDictionaryForm" method="post" action="xzsjzd.htm">
<input type="hidden" name="mhd" value="toList">
<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td nowrap>&nbsp;&nbsp; ※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;数据字典</td>
	<td nowrap align="right"><img src="/mlao/image/help.gif" width="17" height="17" border="0" onClick="javascript:window.open('/mlao/mlao/oa/help/help.htm#154','','height=710,width=700,menubar=no,toolbar=no,location=no,status=no,scrollbars=yes,resizable=no left=150')" alt="帮助"></td>
  </tr>
</table>
<table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td nowrap> </td>
  </tr>
</table>
<tr><td nowrap><table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="23"><img src="../image/red_BODY_left.gif" width="23" height="23"></td>
              <td background="../image/red_BODY_bg.gif"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table height="23"  border="0" cellpadding="0" cellspacing="0">
                        <tr align="center">
                          <td width="82" class="Column_blue">数据字典</td>
                        </tr>
                    </table></td>
                  </tr>
              </table></td>
              <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
            </tr>
          </table>
          <table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <input type="hidden" name="mhd2" value="toList">
            <tr>
              <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
              <td><table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td></td>
                  </tr>
                </table>
                  <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
                    <tr>
                      <td width="67%" align="right" class="text" nowrap>&nbsp;
                        角色名称：&nbsp;&nbsp;&nbsp;
                       <input type="text" name="searchValue2" maxlength="20" size="12" value="" class="input">
                       <input type="submit" name="searchbtn2" value="查询111" class="button_new">
                       <input type="button" name="insert2" value="新增" onClick="toInsert()" class="button_new">
                       <input type="button" name="delete2" value="删除" onClick="doDelete()" class="button_new">
                       <input type="button" name="view2" value="查看" onClick="toView()" class="button_new">
                      </td>
                    </tr>
                  </table>
                <table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td></td>
                    </tr>
                  </table>
                <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB">
                  <tr align="center" class="tdtitle">
                    <td nowrap align="center" width="20"><input type="checkbox" onClick="checkAll(this,'fid')"></td>
                    <td nowrap align="center" width="200" onClick="orderBy(this)" id=".dataTypeF2"><div orderBy="true">
                      类别名称</td>
                    <td nowrap align="center" onClick="orderBy(this)" id=".remarkF2"><div orderBy="true">备注</div></td>
                    <td nowrap align="center" width="100">操作</td>
                  </tr>
                  <tr class="td2"
					 	onmouseover="javascript:changeBgColorOnMouseOver(this);"
          	onmouseout="javascript:changeBgColorOnMouseOut(this);"
          	ondblclick="doDblClick('116910973085946883578',true);">
                    <td nowrap align="left"><input type="checkbox" name="fid2" value="116910973085946883578"></td>
                    <td nowrap align="left">&nbsp;aa</td>
                    <td nowrap align="left">&nbsp;</td>
                    <td nowrap align="left">&nbsp;<a href="xgsjzd.jsp">修改</a> &nbsp;<a href="xxsjzd.htm">详细信息</a> </td>
                  </tr>
                  <tr class="td1"
					 	onmouseover="javascript:changeBgColorOnMouseOver(this);"
          	onmouseout="javascript:changeBgColorOnMouseOut(this);"
          	ondblclick="doDblClick('119934433978146208248',true);">
                    <td nowrap align="left"><input type="checkbox" name="fid2" value="119934433978146208248"></td>
                    <td nowrap align="left">&nbsp;传阅件分类</td>
                    <td nowrap align="left">&nbsp;</td>
                    <td nowrap align="left">&nbsp;<a href="xgsjzd.jsp">修改</a> &nbsp;<a href="xxsjzd.htm">详细信息</a> </td>
                  </tr>
                  <tr class="td2"
					 	onmouseover="javascript:changeBgColorOnMouseOver(this);"
          	onmouseout="javascript:changeBgColorOnMouseOut(this);"
          	ondblclick="doDblClick('122697934721846826540',true);">
                    <td nowrap align="left"><input type="checkbox" name="fid2" value="122697934721846826540"></td>
                    <td nowrap align="left">&nbsp;公共信息分类</td>
                    <td nowrap align="left">&nbsp;</td>
                    <td nowrap align="left">&nbsp;<a href="xgsjzd.jsp">修改</a> &nbsp;<a href="xxsjzd.htm">详细信息</a> </td>
                  </tr>
                  <tr class="td1"
					 	onmouseover="javascript:changeBgColorOnMouseOver(this);"
          	onmouseout="javascript:changeBgColorOnMouseOut(this);"
          	ondblclick="doDblClick('124158469803146669952',true);">
                    <td nowrap align="left"><input type="checkbox" name="fid2" value="124158469803146669952"></td>
                    <td nowrap align="left">&nbsp;视频点播分类</td>
                    <td nowrap align="left">&nbsp;</td>
                    <td nowrap align="left">&nbsp;<a href="xgsjzd.jsp">修改</a> &nbsp;<a href="xxsjzd.htm">详细信息</a> </td>
                  </tr>
                  <tr class="td2"
					 	onmouseover="javascript:changeBgColorOnMouseOver(this);"
          	onmouseout="javascript:changeBgColorOnMouseOut(this);"
          	ondblclick="doDblClick('60407111615156',true);">
                    <td nowrap align="left"><input type="checkbox" name="fid2" value="60407111615156"></td>
                    <td nowrap align="left">&nbsp;词条</td>
                    <td nowrap align="left">&nbsp;</td>
                    <td nowrap align="left">&nbsp;<a href="xgsjzd.jsp">修改</a> &nbsp;<a href="xxsjzd.htm">详细信息</a> </td>
                  </tr>
                </table>
                <table width="500"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB">
                  <tr></tr>
                  </table>
                <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><input type="hidden" name="orderType2" value="asc">
                          <input type="hidden" name="orderFid2" value=".sort_no">
                          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                            <tr>
                              <td nowrap width="45%" align="center"> 当前第1页 共14记录 分2页显示 </td>
                              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage2" value="1">
                                  <input type="hidden" name="paginationAction2" value="">
                                  <img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp <a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false"  onclick="this.document.SysRoleForm.paginationAction.value='Next';"><img src="../image/Next.gif" alt="下一页" width="14" height="13" border="0"></a>&nbsp&nbsp&nbsp <a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false"  onclick="this.document.SysRoleForm.paginationAction.value='Last';"><img src="../image/Last.gif" alt="最后一页" width="18" height="13" border="0"></a>&nbsp&nbsp&nbsp <a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false" onClick="if(this.document.SysRoleForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.SysRoleForm.paginationAction.value='gotoPage';}">前往</a>
                                  <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect2' value=''/>
                                页 </td>
                            </tr>
                          </table>
                      </td>
                    </tr>
                </table></td>
              <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;</td>
            </tr>
          </table>
          <table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="18"><img src="../image/red_BODY_downleft.gif" width="24" height="24"></td>
              <td background="../image/red_BODY_downbg.gif">&nbsp;</td>
              <td width="18"><img src="../image/red_BODY_downright.gif" width="24" height="24"></td>
            </tr>
          </table></td>
  </tr>
</form>
</body>

</html>