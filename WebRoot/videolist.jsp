<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>

<html>
<head>
<title>影碟租借</title>
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

<table  width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
  <tr>
      <td width="135"><div align="center"><a href="index.jsp">首页</a></div></td>
      <td width="140"><div align="center"><a href="videolist.jsp">在线租借</a></div></td>
      <td width="140" align="right"><div align="center"><a href="myshopcar.jsp">租借车</a></div></td>
      <td width="140" align="right"><div align="center"><a href="userborrow.jsp">我的租借</a></div></td>
      <td width="135" align="right"><div align="center"><a href="login.jsp">登录</a></div></td>
  </tr>
</table>
</div>
<div align="center">
<br><a class="title">在线租借</a><br>
<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM tb_videoinfo ";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="43%" height="26"><div align="center">影碟名字</div></td>
    <td width="17%"><div align="center">出品公司</div></td>
    <td width="17%"><div align="center">主演</div></td>
    <td width="5%"><div align="center">价格</div></td>
    <td width="9%"><div align="center">操作</div></td>
  </tr>
<%     
		String s;
		byte c[];
		while(rs.next()) 
		{
%>
  <tr>
    <td height="32"><div align="center">
    <%
    	s=rs.getString("name");
    	c=s.getBytes("ISO-8859-1");
    	s=new String (c);
    %>
    <%=s%></div></td>
    <td><div align="center">
    <%
    	s=rs.getString("company");
    	c=s.getBytes("ISO-8859-1");
    	s=new String (c);
    %>
    <%=s%></div></td>
    <td><div align="center">
    <%
    	s=rs.getString("zhuyan");
    	c=s.getBytes("ISO-8859-1");
    	s=new String (c);
    %>
    <%=s%></div></td>
    <td><div align="center">
    <%
    	s=rs.getString("price");
    	c=s.getBytes("ISO-8859-1");
    	s=new String (c);
    %>
    <%=s%></div></td>
    <td><div align="center"><a href="videodetil.jsp?name=<%=rs.getString("name")%>"> <img src="images/borrow.gif" width="45" height="16" border="0""> </a> </div></td>
  </tr>
  <%}%>
</table>
</div>
<p>&nbsp;</p>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
