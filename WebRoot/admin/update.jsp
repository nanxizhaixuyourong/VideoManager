<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../including/common.jsp"%>
<html>
<head>
<title>����Ӱ��</title>
<link href="../including/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {

	if (form1.daoyyan.value.length==0){
		alert("�����뵼��!");
		form1.daoyan.focus();
		return false;
	}
	if (form1.bianju.value.length==0){
		alert("��������!");
		form1.bianju.focus();
		return false;
	}
	if (form1.zhuyan.value.length==0){
		alert("����������!");
		form1.zhuyan.focus();
		return false;
	}
	if (form1.first.value.length==0){
		alert("��������ӳʱ��!");
		form1.first.focus();
		return false;
	}
	if (form1.price.value.length==0){
		alert("������۸�!");
		form1.price.focus();
		return false;
	}
	if (form1.introduce.value.length==0){
		alert("��������!");
		form1.introduce.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div align="center">
<img border='0' src='../../images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center"><br>
    <a class="title">�޸�Ӱ����Ϣ</a><br>
</div>
<%
	String name = new String(request.getParameter("name").trim().getBytes("ISO-8859-1"));
	String sql = "SELECT * FROM tb_videoinfo WHERE name='"+name+"'";
 	DBSQL dbsm = new DBSQL();
 	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs =  dbsm.getRs();
	rs.next();
	
%>
<form name="form1" method="post" action="byupdate.jsp?name=<%=name%>">
    <table width="600" height="232" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="76" height="15"><div align="center">Ӱ����</div></td>
        <td width="316"><%=rs.getString("name")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">��Ʒ��˾</div></td>
        <td><input name="company" type="text" value=<%=rs.getString("company")%> size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����</div></td>
        <td><input name="daoyan" type="text" value=<%=rs.getString("daoyan")%> size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">���</div></td>
        <td><input name="bianju" type="text" value=<%=rs.getString("bianju")%> size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����</div></td>
        <td><input name="zhuyan" type="text" value=<%=rs.getString("zhuyan")%> size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">��ӳʱ��</div></td>
        <td><input name="first" type="text" value=<%=rs.getString("first")%> size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����</div></td>
        <td><input name="price" type="text" value=<%=rs.getString("price")%> size="40"></td>
      </tr>
      <tr>
        <td height="33"><div align="center">���</div></td>
        <td><textarea name="introduce" cols="70" rows="10"><%=rs.getString("INTRODUCE")%></textarea></td>
      </tr>
      <tr>
        <td height="65" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="�޸�" onClick="javascript:return(checkform());">          
          <input type="reset" name="reset" value="����">
        </div></td>
      </tr>
  </table>
    <div align="center"></div>
</form></div>
</body>
</html>
