<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<html>
<head>
<title>����Ӱ��</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center">
<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr> 
      <td width="111" height="87" align="center"><img src="images/logo.gif" width="91" height="72"><br>      </td>
      <td width="509" align="center" bgcolor="black" height="80"  ><span style="font-size:50px;color:white;">Ӱ�������</big></td>
      <td align="center" width="70">      <a href="admin/login.jsp">��վ����</a></td>
    </tr>
</table>

<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
  <tr>
      <td width="135"><div align="center"><a href="index.jsp">��ҳ</a></div></td>
      <td width="140"><div align="center"><a href="videolist.jsp">�������</a></div></td>
      <td width="140" align="right"><div align="center"><a href="myshopcar.jsp">��賵</a></div></td>
      <td width="140" align="right"><div align="center"><a href="userborrow.jsp">�ҵ����</a></div></td>
      <td width="135" align="right"><div align="center"><a href="login.jsp">��¼</a></div></td>
  </tr>
</table>
</div>
<%
		String userid = new String(request.getParameter("userid").trim().getBytes("ISO-8859-1"));
		String password = new String(request.getParameter("password").trim().getBytes("ISO-8859-1"));
		String username = new String(request.getParameter("username").trim().getBytes("ISO-8859-1"));
		String address = new String(request.getParameter("address").trim().getBytes("ISO-8859-1"));
		String phone = new String(request.getParameter("phone").trim().getBytes("ISO-8859-1"));
		String email = new String(request.getParameter("email").trim().getBytes("ISO-8859-1"));

		DBSQL dbsm = new DBSQL();
		String sql="INSERT INTO tb_userpassword VALUES('"+userid+"','"+password+"','N','"+username+"','"+address+"','"+phone+"','"+email+"')";
		dbsm.setSqlStr(sql);
		//dbsm.executeUpdate();
		dbsm.Update();
		dbsm.close();  
%>
<br><a class="title">�Ѿ�ע��ɹ�����<a href="login.jsp">��¼</a></a><br> 
<%@ include file="including/footer.jsp"%>  
</div>
</body>
</html>
