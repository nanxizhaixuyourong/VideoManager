<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%> 
<%@ include file="including/check.jsp"%>
<%
		String name = new String(request.getParameter("name").trim());
		String days = new String(request.getParameter("days").trim());
			
		Vector borrowlist = (Vector)session.getValue("shopcar");
		int ismatch = 0;
		Video _video = new Video(name, Integer.parseInt(days));
		if (borrowlist == null)		 
		{
			borrowlist = new Vector();
			borrowlist.addElement(_video);
		}
		else
		{
			for(int i=0; i<borrowlist.size(); i++)
				{
					Video _video2 =(Video)borrowlist.elementAt(i);
					if(_video2.getname().equals(_video.getname()))
					{
						_video2.setDays(_video2.getDays()+_video.getDays());
						borrowlist.setElementAt(_video2,i);
						ismatch = 1;
					}
				}
			if(ismatch==0)
				borrowlist.addElement(_video);
		}
		session.putValue("shopcar", borrowlist);
		response.sendRedirect("myshopcar.jsp");
%>
