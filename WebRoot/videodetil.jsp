<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>

<html>
<script language="javascript">
function checkform() {

	if (form1.days.value.length==0){
		alert("�������������!");
		form1.days.focus();
		return false;
	}
}
</script>
<head>
<title>Ӱ�����</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<p>
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
</p>
<br><a class="title">���Ӱ��</a><br>
<%
		String name = new String(request.getParameter("name").trim());
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * from tb_videoinfo WHERE name='"+name+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		String s;
		byte c[];
%>

<form name="form1" method="post" action="videoborrow.jsp?name=<%=name%>">
    <table width="700" height="233" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td width="85" height="25"><div align="center">Ӱ������ </div></td>
        <td width="609"><div align="left">
    	<%=rs.getString("name")%></div></td>
      </tr>
      <tr>
        <td height="24"><div align="center">��Ʒ��˾</div></td>
        <td><div align="left">
    	<%=rs.getString("company")%></div></td>
      </tr>
      <tr>
        <td height="25"><div align="center">��ӳʱ��</div></td>
        <td><div align="left">
    	<%=rs.getString("first")%>
        </div></td>
      </tr>
      <tr>
        <td height="26"><div align="center">����</div></td>
        <td><div align="left">
    	<%=rs.getString("daoyan")%></div></td>
      </tr>
      <tr>
        <td height="23"><div align="center">����</div></td>
        <td><div align="left">
    <%=rs.getString("zhuyan")%></div></td>
      </tr>
      <tr>
        <td height="21"><div align="center">����</div></td>
        <td><div align="left">
    <%=rs.getString("price")%></div></td>
      </tr>      
      <tr>
        <td height="23"><div align="center">���</div></td>
        <td><div align="left">
    	<%=rs.getString("INTRODUCE")%>
        </div></td>
      </tr>
      <tr>
        <td height="26"><div align="center">�������</div></td>
        <td><div align="left">
          <input name="days" type="text" id="days" size="5" maxlength="10">
        </div></td>
      </tr>
      <tr>
        <td height="38" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="���" onClick="javascript:return(checkform());">          
          <input type="reset" name="Reset" value="����">
        </div></td>
      </tr>
  </table>
</form>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
