<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../including/common.jsp"%>
<html>
<head>
<title>在线影碟</title>
<link href="../including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<img border='0' src='../images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center"><br>
<%
		String name = new String(request.getParameter("name").trim().getBytes("ISO-8859-1"));
		String company = new String(request.getParameter("company").trim().getBytes("ISO-8859-1"));
		String daoyan = new String(request.getParameter("daoyan").trim().getBytes("ISO-8859-1"));
		String zhuyan = new String(request.getParameter("zhuyan").trim().getBytes("ISO-8859-1"));
		String bianju = new String(request.getParameter("bianju").trim().getBytes("ISO-8859-1"));
		String first = new String(request.getParameter("first").trim().getBytes("ISO-8859-1"));
		String price = new String(request.getParameter("price").trim().getBytes("ISO-8859-1"));
		String introduce = new String(request.getParameter("introduce").trim());

		DBSQL dbsm = new DBSQL();
		String sql="UPDATE tb_videoinfo SET company='"+company+"',daoyan='"+daoyan+"',bianju='"+bianju+"',zhuyan='"+zhuyan+"',price="+Float.parseFloat(price)+" ,INTRODUCE='"+introduce+"' WHERE name='"+name+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();  
%>
    <a class="title">影碟修改成功！</a><br><br>
  <a href="main.jsp">返回管理页面</a></div></div>
</body>
</html>
