<%@page contentType="text/html;charset=gb2312"%>
<%@ include file="including/common.jsp"%>

<%
	String userid = new String(request.getParameter("userid").trim().getBytes("ISO-8859-1"));
	String password = new String(request.getParameter("password").trim().getBytes("ISO-8859-1"));
 
	String sql = "SELECT * FROM tb_user WHERE id='"+userid+"' AND password='"+password+"'";
 	DBSQL dbsm = new DBSQL();
 	dbsm.setSqlStr(sql);
	dbsm.Query();
	ResultSet rs =  dbsm.getRs();
	if (!rs.next()) 
    	{
  		String errmsg="error1";
  		response.sendRedirect("login.jsp?errmsg="+errmsg);
  		return;
    	} 
    
	request.getSession(true);
	String chk="true";
	session.putValue("Enter",chk);
	session.putValue("userid",userid);
	response.sendRedirect("videolist.jsp");
%>
