<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>

<html>
<head>
<title>在线影碟</title>
<link href="incoming/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
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
<%
	String userid=(String)session.getValue("userid");
	String sql = "SELECT * FROM tb_user WHERE id='"+userid+"'";
 	DBSQL dbsm = new DBSQL();
 	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs =  dbsm.getRs();
	rs.next();
%>
<br><a class="title">修改个人信息</a>
<form name="form1" method="post" action="usersave.jsp">
    <table width="453" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td width="91" align="right">用户名：</td>
        <td width="356"><%=rs.getString("id")%></td>
      </tr>
      <tr>
        <td align="right">密码：</td>
        <td width="356">
          <input name="password" type="password" id="password" size="15" maxlength="20" value=<%=rs.getString("password")%>>
        （1～15个字符）</td>
      </tr>
      <tr>
        <td align="right">确认密码：</td>
        <td width="356">
          <input name="passwordconfirm" type="password" id="passwordconfirm" size="15" maxlength="20" value=<%=rs.getString("password")%>></td>
      </tr>
      <tr>
        <td align="right">真实姓名：</td>
        <td width="356">
          <input name="username" type="text" id="username" size="10" maxlength="20" value=<%=rs.getString("name")%>></td>
      </tr>
      <tr>
        <td align="right">联系地址：</td>
        <td width="356">
          <input type="text" name="address" maxlength="100" size="50" value=<%=rs.getString("address")%>></td>
      </tr>
      <tr>
        <td align="right">联系电话：</td>
        <td width="356">
          <input type="text" name="phone" maxlength="20" size="16" value=<%=rs.getString("phone")%>>
        </td>
      </tr>
      <tr>
        <td align="right">电子邮件：</td>
        <td width="356">
          <input type="text" name="email" maxlength="50" size="25" value=<%=rs.getString("email")%>>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="right"> 
          <div align="center">
            <input type="submit" name="Submit" value="修改" onclick="javascript:return(checkform());">
            <input type="reset" name="reset" value="重填">
                  </div></td>
      </tr>
    </table>
  </form>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
