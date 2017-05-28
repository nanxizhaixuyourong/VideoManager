<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>

<html>
<head>
<title>在线影碟</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
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
<br>
<a class="title">查看个人信息</a>
<%
	String userid=(String)session.getValue("userid");
	String sql = "SELECT * FROM tb_user WHERE id='"+userid+"'";
 	DBSQL dbsm = new DBSQL();
 	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs =  dbsm.getRs();
	rs.next();
%>
    <table width="400" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td width="85" align="right">用户名：</td>
        <td width="309"><%=rs.getString("id")%></td>
      </tr>
      <tr>
        <td width="85" align="right">密码：</td>
        <td width="309"><%=rs.getString("password")%></td>
      </tr>
      <tr>
        <td width="85" align="right">真实姓名：</td>
        <td width="309"><%=rs.getString("name")%></td>
      </tr>
      <tr>
        <td width="85" align="right">联系地址：</td>
        <td width="309"><%=rs.getString("address")%></td>
      </tr>
      <tr>
        <td width="85" align="right">联系电话：</td>
        <td width="309"><%=rs.getString("phone")%> </td>
      </tr>
      <tr>
        <td width="85" align="right">电子邮件：</td>
        <td width="309"><%=rs.getString("email")%></td>
      </tr>
      <tr>
        <td height="49" colspan="2" align="right">
          <div align="center">
            <a href="index.jsp"><input type="button" name="clostbtn" value="返回主页" ></a>
        </div></td>
      </tr>
    </table>
    <%@ include file="including/footer.jsp"%>
    </div>
</body>
</html>
