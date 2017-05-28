<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>

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
<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="148" height="285"><table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
        <tr>
          <td height="40"><div align="center"><a href="userinfo.jsp">查看个人信息</a></div></td>
        </tr>
        <tr>
          <td height="50"><div align="center"><a href="userupdate.jsp">修改个人信息</a></div></td>
        </tr>
      </table></td>
      <td width="546" valign="top"><div align="center">
        <p>&nbsp;</p>
  <br>
  <a class="title">您的租借</a><br>
<%
	String userid=(String)session.getValue("userid");
	String sql = "SELECT * FROM tb_myborrow WHERE userid='"+userid+"'";
 	DBSQL dbsm = new DBSQL();
 	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs =  dbsm.getRs();
%> 
        <table width="80%" height="48" border="1" cellpadding="1" cellspacing="1">
          <tr>
            <td width="70" height="24"><div align="center">序号</div></td>
            <td width="71"><div align="center">金额</div></td>
            <td width="156"><div align="center">租借日期</div></td>
            <td width="70"><div align="center">详情</div></td>
          </tr>
<%     while(rs.next()) 
		{
%>
		  <tr>
            <td ><div align="center"><%=rs.getString("borrow_id")%></div></td>
            <td><div align="center"><%=rs.getFloat("price")%></div></td>
            <td><div align="center"><%=rs.getString("borrow_data")%></div></td>
            <td><div align="center"><a href="borrowmessage.jsp?orderid=<%=rs.getString("borrow_id")%>">查看</a></div></td>
          </tr>
<%}%>		 
        </table>
        </div></td>
    </tr>
  </table>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
