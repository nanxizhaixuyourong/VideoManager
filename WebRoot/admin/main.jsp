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
<div align="center">
<p>
  <a class="title"> 管理影碟</a> 
</p>
  <p><a href="insert.jsp">添加影碟</a> <a href="../index.jsp">主页</a></p>
  <%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM tb_videoinfo ";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
%>  
  <table width="700" border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td width="131" height="30"><div align="center">影碟名字</div></td>
          <td width="200"><div align="center">出品公司</div></td>
          <td width="137"><div align="center">导演</div></td>
          <td width="137"><div align="center">编剧</div></td>
          <td width="121"><div align="center">主演</div></td>
          <td colspan="2"><div align="center"></div>            
            <div align="center">操作</div></td>
        </tr>
<%     while(rs.next()) 
		{
%>
        <tr>
          <td height="30"><div align="center"><%=rs.getString("name")%></div></td>
          <td><div align="center"><%=rs.getString("company")%></div></td>
          <td><div align="center"><%=rs.getString("daoyan")%></div></td>
          <td><div align="center"><%=rs.getString("bianju")%></div></td>
          <td><div align="center"><%=rs.getString("zhuyan")%></div></td>
          <td width="43"><div align="center"><a href="update.jsp?name=<%=rs.getString("name")%>">修改</a></div></td>
          <td width="54"><div align="center"><a href="bydelete.jsp?name=<%=rs.getString("name")%>">删除</a></div></td>
        </tr>
<%}%>
      </table>
    <br>
</div></div>
</body>
</html>
