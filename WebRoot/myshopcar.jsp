<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>

<html>
<head>
<title>Ӱ�����</title>
<link href="incoming/style.css" rel="stylesheet" type="text/css">
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
<div align="center">
<br><a class="title">�����Ϣ</a><br>
<%
	Vector borrowlist = (Vector)session.getValue("shopcar");
	if(borrowlist!=null&&(borrowlist.size()>0))
		{
			float pricenum =0;
%>
			
<form name="form1" method="post" action="borrowdata_save.jsp">
  <table width="700" border="1" cellpadding="0" cellspacing="0">
    <tr>
      <td width="430" height="22"><div align="center">����</div></td>
      <td width="148"><div align="center">����</div></td>
      <td width="114"><div align="center">�������</div></td>
    </tr>
<%
	for(int i=0;i<borrowlist.size();i++)
		{
			Video video = (Video)borrowlist.elementAt(i);
			pricenum = pricenum + video.getDays()*video.getPrice();
%>

    <tr>
      <td height="21"><div align="center"><%=video.getname()%></td>
      <td><div align="center"><%=video.getPrice()%></div></td>
      <td><div align="center"><%=video.getDays()%></div></td>
    </tr>
<%}
%>	
    <tr>
      <td height="45" colspan="3"><div align="center"></div>        <div align="center"></div>        
        <div align="center">�ܼƼ۸�<%=pricenum%>Ԫ</div></td>
    </tr>
  </table>
  <p>
    <input type="submit" name="Submit" value="ȷ�����">
  </p>
</form>
<%}
	else	
{%>
<br>��賵Ϊ��!<br>
<%}%>
</div>
<p>&nbsp;</p>
<%@ include file="including/footer.jsp"%>  
</div>
</body>
</html>
