<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../including/common.jsp"%>
<html>
<head>
<title>����Ӱ��</title>
<link href="../including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<img border='0' src='../images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center"><br>
<%
		String name = new String(request.getParameter("name").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="DELETE FROM tb_videoinfo WHERE name='"+name+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();  
%>
    <a class="title">Ӱ��ɾ���ɹ���</a><br><br>
  <a href="main.jsp">���ع���ҳ��</a></div>
  </div>
</body>
</html>
