<%
  if((String)session.getValue("Enter")!="true")
   {
     String errmsg="error2";
     response.sendRedirect("login.jsp?errmsg="+errmsg);
   }
%>