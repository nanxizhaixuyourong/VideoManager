<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="including/common.jsp"%>
<%@ include file="including/check.jsp"%>
<html>
<head>
<title>在线影碟</title>
<link href="including/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<%@ include file="including/header.jsp"%> 
<%
	Vector borrowlist = (Vector)session.getValue("shopcar");
	if(borrowlist==null||borrowlist.size()<1)
		{
%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%}
	String userid = (String)session.getValue("userid");
	float pricenum =0;
	for(int i=0;i<borrowlist.size();i++)
		{
			Video video = (Video)borrowlist.elementAt(i);
			pricenum = pricenum + video.getDays()*video.getPrice();
		}
	
	DBSQL dbsm = new DBSQL();
	String sql="INSERT INTO tb_myborrow(userid, price, borrow_data) VALUES('"+userid+"',"+pricenum+",'"+_dateString+"')";
	dbsm.setSqlStr(sql);
	dbsm.Update();
	dbsm.close();  
	
	DBSQL dbsm_ = new DBSQL();
	String sql_="SELECT borrow_id FROM tb_myborrow WHERE userid='"+userid+"' AND borrow_data='"+_dateString+"'";
	dbsm_.setSqlStr(sql_);
	dbsm_.Query();
	ResultSet rs_=dbsm_.getRs();
	rs_.next();
	String id = rs_.getString("borrow_id");
	dbsm_.close();  
	
	for(int j=0; j<borrowlist.size(); j++)
	{
		Video video = (Video)borrowlist.elementAt(j);
		DBSQL _dbsm = new DBSQL();
		String _sql="INSERT INTO tb_borrow(borrow_id,videoname, days) VALUES('"+id+"','"+video.getname()+"','"+video.getDays()+"')";
		_dbsm.setSqlStr(_sql);
		_dbsm.Update();
		_dbsm.close();  
	}		
%>
<br><a class="title">谢谢您的租借！</a><br>
<%@ include file="including/footer.jsp"%>  
</div>
</body>
</html>
