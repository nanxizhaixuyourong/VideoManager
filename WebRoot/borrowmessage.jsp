<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>
<html>
<head>
<title>在线影碟</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<%@ include file="including/header.jsp"%> 
<br><a class="title">租借详细信息</a><br>
<%
	String orderid = new String(request.getParameter("borrow_id").trim().getBytes("ISO-8859-1"));
	String userid = (String)session.getValue("userid");
	
	DBSQL dbsm = new DBSQL();
	String sql="SELECT a.videoname, b.company, b.daoyan, b.zhuyan, b.price, a.days FROM tb_borrow AS a, tb_videoinfo AS b WHERE a.videoname=b.name AND a.borrow_id='"+orderid+"'";
	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs=dbsm.getRs();
%>

<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="88" height="30"><div align="center">影碟名字</div></td>
    <td width="259"><div align="center">出品公司</div></td>
    <td width="135"><div align="center">导演</div></td>
    <td width="125"><div align="center">主演</div></td>
    <td width="39"><div align="center">单价</div></td>
    <td width="40"><div align="center">租借天数</div></td>
  </tr>
<%     while(rs.next()) 
		{
%>

  <tr>
    <td><div align="center"><%=rs.getString("name")%></div></td>
    <td><div align="center"><%=rs.getString("company")%></div></td>
    <td><div align="center"><%=rs.getString("daoyan")%></div></td>
    <td><div align="center"><%=rs.getString("zhuyan")%></div></td>
    <td><div align="center"><%=rs.getString("price")%></div></td>
    <td><div align="center"><%=rs.getString("days")%></div></td>
  </tr>
 <%}
 	dbsm.close();
 %> 
</table>
<%@ include file="including/footer.jsp"%>
</div>  
</body>
</html>
