<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>

<%
 String errmsg = request.getParameter("errmsg");
 request.getSession(true);
 String chk = "false";
 session.putValue("Enter",chk);
%>

<html>
<head>
<title>在线影碟</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
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
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center">
<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr> 
      <td width="111" height="87" align="center"><img src="images/logo.gif" width="91" height="72"><br>      </td>
      <td width="509" align="center" bgcolor="black" height="80"  ><span style="font-size:50px;color:white;">影碟租借所</big></td>
      <td align="center" width="70">      <a href="admin/login.jsp">网站管理</a></td>
    </tr>
</table>

<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
  <tr>
      <td width="135"><div align="center"><a href="index.jsp">首页</a></div></td>
      <td width="140"><div align="center"><a href="videolist.jsp">在线租借</a></div></td>
      <td width="140" align="right"><div align="center"><a href="myshopcar.jsp">租借车</a></div></td>
      <td width="140" align="right"><div align="center"><a href="userborrow.jsp">我的租借</a></div></td>
      <td width="135" align="right"><div align="center"><a href="login.jsp">登录</a></div></td>
  </tr>
</table>
</div>
<br><a class="title">用户登录</a><br>
<form name="form1" method="post" action="loginchk.jsp">
    <table width="398" height="215" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td width="394" height="213"><table width="78%" height="80%" border="0" align="center" cellpadding="1" cellspacing="1">
          <tr>
            <td colspan="2" align="center"><font color="#CC3333">
<%
 if(errmsg != null && errmsg.equals("error1"))
  out.print("您输入的用户名或密码不正确，请重新输入！");
 else if(errmsg != null && errmsg.equals("error2"))
  out.print("请先登录！");
%>
</font>
			</td>
          </tr>
          <tr>
            <td width="173" align="right">用户名：</td>
            <td width="215">
              <input name="userid" type="text" id="userid" size="15" maxlength="20" >
            </td>
          </tr>
          <tr>
            <td width="173" align="right">密码：</td>
            <td width="215">
              <input name="password" type="password" id="password" size="15" maxlength="20">
            </td>
          </tr>
          <tr>
            <td width="173" height="23" align="right">&nbsp; </td>
            <td width="215">
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
</form>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
