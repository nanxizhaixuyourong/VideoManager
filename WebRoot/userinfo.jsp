<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>

<html>
<head>
<title>����Ӱ��</title>
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
<br>
<a class="title">�鿴������Ϣ</a>
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
        <td width="85" align="right">�û�����</td>
        <td width="309"><%=rs.getString("id")%></td>
      </tr>
      <tr>
        <td width="85" align="right">���룺</td>
        <td width="309"><%=rs.getString("password")%></td>
      </tr>
      <tr>
        <td width="85" align="right">��ʵ������</td>
        <td width="309"><%=rs.getString("name")%></td>
      </tr>
      <tr>
        <td width="85" align="right">��ϵ��ַ��</td>
        <td width="309"><%=rs.getString("address")%></td>
      </tr>
      <tr>
        <td width="85" align="right">��ϵ�绰��</td>
        <td width="309"><%=rs.getString("phone")%> </td>
      </tr>
      <tr>
        <td width="85" align="right">�����ʼ���</td>
        <td width="309"><%=rs.getString("email")%></td>
      </tr>
      <tr>
        <td height="49" colspan="2" align="right">
          <div align="center">
            <a href="index.jsp"><input type="button" name="clostbtn" value="������ҳ" ></a>
        </div></td>
      </tr>
    </table>
    <%@ include file="including/footer.jsp"%>
    </div>
</body>
</html>
