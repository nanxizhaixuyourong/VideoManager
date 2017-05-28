<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../including/common.jsp"%>
<html>
<head>
<title>在线影碟</title>
<link href="../including/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.userid.value.length<1 || form1.userid.value.length>15){
		alert("请输入正确的用户名！");
		form1.userid.focus();
		return false;
	}
	if (form1.password.value.length<1 || form1.password.value.length>15){
		alert("请输入正确的密码!");
		form1.password.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div align="center">
<img border='0' src='../images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center"><br>
    <a class="title">管理员登录</a><br>
</div>
<form name="form1" method="post" action="loginchk.jsp">
    <table width="398" height="215" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="394" height="213"><table width="91%" height="80%" border="0" align="center" cellpadding="1" cellspacing="1">
          <tr>
            <td colspan="2" align="center"><font color="#CC3333">
<%
 if(request.getParameter("errmsg")!=null)
 { 
	String errmsg = request.getParameter("errmsg");
	 if(errmsg.equals("error1"))
	  out.print("您输入的用户名或密码不正确，请重新输入！");
 }
%>
</font></td>
          </tr>
          <tr>
            <td width="120" align="right">用户名：</td>
            <td width="208">
              <input name="userid" type="text" id="userid" size="15" maxlength="20" >
            </td>
          </tr>
          <tr>
            <td width="120" align="right">密码：</td>
            <td width="208">
              <input name="password" type="password" id="password" size="15" maxlength="20">
            </td>
          </tr>
          <tr>
            <td width="120" height="23" align="right">&nbsp; </td>
            <td width="208">
                <div align="left">
                  <input type="submit" name="Submit" value="登录" onclick="javascript:return(checkform());">
                   <input type="reset" name="reset" value="重填">
              </div></td>
          </tr>
        </table>
          <div align="center"></div>
          <div align="center"></div>
          <div align="center"></div>
        <div align="center"></div></td>
      </tr>
  </table>
    <div align="center"></div>
</form></div>
</body>
</html>
