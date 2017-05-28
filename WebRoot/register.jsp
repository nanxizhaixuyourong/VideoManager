<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<html>
<head>
<title>用户注册</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.userid.value.length<1 || form1.userid.value.length>15){
		alert("用户名超出了范围（1～15）！");
		form1.userid.focus();
		return false;
	}
	if (form1.password.value.length<1 || form1.password.value.length>15){
		alert("密码超出了范围（1～15）！");
		form1.password.focus();
		return false;
	}
	if (form1.password.value!=form1.passwordconfirm.value){
		alert("确认密码不相符！");
		form1.passwordconfirm.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div>
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
  <form name="form1" method="post" action="isRegister.jsp">
    <table align="center"  width="550" height="322" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td height="320"><p align="center" >&nbsp;</p>
          <p align="center"><a class="title">用户注册</a></p>
          <table width="90%" height="80%" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td colspan="2" align="center"><b></b></td>
          </tr>
          <tr>
            <td width="171" align="right">用户名：</td>
            <td width="272">
              <input name="userid" type="text" id="userid" size="20" maxlength="20" >
            </td>
          </tr>
          <tr>
            <td width="171" align="right">密码：</td>
            <td width="272">
              <input name="password" type="password" id="password" size="20" maxlength="20">
            </td>
          </tr>
          <tr>
            <td width="171" align="right">确认密码：</td>
            <td width="272">
              <input name="passwordconfirm" type="password" id="passwordconfirm" size="20" maxlength="20">
            </td>
          </tr>
          <tr>
            <td width="171" align="right">真实姓名：</td>
            <td width="272">
              <input name="username" type="text" id="username" size="20" maxlength="20">
            </td>
          </tr>
          <tr>
            <td width="171" align="right">联系地址：</td>
            <td width="272">
              <input type="text" name="address" maxlength="100" size="20"></td>
          </tr>
          <tr>
            <td width="171" align="right">联系电话：</td>
            <td width="272">
              <input type="text" name="phone" maxlength="20" size="20">
            </td>
          </tr>
          <tr>
            <td width="171" align="right">电子邮件：</td>
            <td width="272">
              <input type="text" name="email" maxlength="50" size="20">
            </td>
          </tr>
          <tr>
            
            <td colspan="3" width="272" align="center">
                <div>
                  <input type="submit" name="Submit" value="注册" onclick="javascript:return(checkform());">
                  <input type="reset" name="reset" value="重填">
                </div>
            </td>
          </tr>
        </table>
        <div align="center"></div></td>
      </tr>
    </table>
  </form>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
