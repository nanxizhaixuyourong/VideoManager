<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="including/common.jsp"%>
<html>
<head>
<title>影碟租借</title>

<style type="text/css"> 
.align-center{ 
margin:0 auto;
width:780px;
text-align:right;
}
</style> 
<link href="including/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.userid.value.length<1 || form1.userid.value.length>15){
		alert("请输入正确的用户名！");
		form1.userid.focus();
		return false;
	}
	if (form1.password.value.length<1 || form1.password.value.length>15){
		alert("请输入正确的密码!");
		form1.password.focus();
		return false;
	}
	return true;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body  >
<div>
<img border='0' src='images/06.jpg' width='100%' height='100%' 
style='position: absolute;left:0px;top:0px;z-index: -1'>
<div align="center">
<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr> 
      <td width="111" height="87" align="center"><img src="images/logo.gif" width="91" height="72"><br>      </td>
      <td width="509" align="center" bgcolor="black" height="80"  ><span style="font-size:50px;color:white;">影碟租借所</big></td>
      <td align="center" width="70">      <a href="admin/login.jsp">网站管理</a></td>
    </tr>
</table>

<table width="700" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
  <tr>
      <td width="135"><div align="center"><a href="index.jsp">首页</a></div></td>
      <td width="140"><div align="center"><a href="videolist.jsp">在线租借</a></div></td>
      <td width="140" align="right"><div align="center"><a href="myshopcar.jsp">租借车</a></div></td>
      <td width="140" align="right"><div align="center"><a href="userborrow.jsp">我的租借</a></div></td>
      <td width="135" align="right"><div align="center"><a href="login.jsp">登录</a></div></td>
  </tr>
</table>
</div>
<div class="align-center"> 若不是本站会员，请在此 <a href="register.jsp">注册 </a></div>
<div align="center">
<table  border="1" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="200">
	<table height="550" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td width="192" height="33"><div align="center">租借热度榜</div></td>
      </tr>
      <tr>
        <td height="520">
		<marquee scrollamount='1' scrolldelay='30' direction='down' id='adv' hspace='10' vspace='5' onmouseover='adv.stop()' onmouseout='adv.start()'>
		公民凯恩<br>星球大战<br>悲情城市<br>狮子王<br>勇敢的心<br>花样年华
		<br>泰坦尼克号<br>燃情岁月<br>阳光灿烂的日子西线无战事<br>马路天使<br>乱世佳人<br>魂断蓝桥<br>卡萨布兰卡
		<br>小城之春<br>罗生门<br>罗马假日<br>后窗<br>宾虚<br>西区故事<br>音乐之声<br>教父<br>人证<br>城南旧事
		<br>莫扎特<br>芙蓉镇<br>红高粱
		  </marquee>		  
		</td>
      </tr>
    </table>
    </td>
    <td width="600"><div align="center">
   <a class="title">经典影片</a></div>      
      <table width="580" height="350" border="1" cellpadding="0" 
cellspacing="0" style="width: 576px; ">

      <tr>
        <td width="250" rowspan="7"><img src="images/01.jpg" width="370" height="350"></td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; "> 电影名字</td>
        <td height="35" style="width: 286px; "> 权利的游戏 </td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; "> 出品公司</td>
        <td height="35" style="width: 286px; "> HBO电视网 </td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; "> 首播时间</td>
        <td height="35"> 2011年4月17日（美国）</td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; ">  导演</td>
        <td height="35"> 戴维-贝尼奥夫、D-B-威斯、Alan Taylor</td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; ">  编    剧</td>
        <td height="35"> 乔治-马丁， 戴维-贝尼奥夫，D.B.Weiss </td>
      </tr>
      <tr>
        <td height="35" style="width: 70px; ">  主    演</td>
        <td height="35">伊萨克-亨普斯特德-怀特，查里斯-丹斯，麦茜-威廉姆斯，艾米莉亚-克拉克，斯蒂芬-迪兰，彼特-丁拉基</td>
      </tr>
      <tr valign="top">
        <td height="134" colspan="3">
        <p>剧情简介： </p>
          	故事从维斯特洛大陆边境处发现远古传说中早已灭绝的生物开始，预示着危险即将到来。而这片大陆的临冬城主暨北境统领艾德史塔克家族也迎来了老友兼国王劳勃-拜拉席恩的来访。国王希望艾德-史塔克（肖恩-宾 Sean Bean 饰）能担任首相一职，对抗企图夺取铁王座的叛军。危情一触即发，整个王国看似平和的表面下却是波涛暗涌。权高位重的拜拉席恩家族、勇敢善良的史塔克家族、企图谋取王位的坦格利安家族、有着不可告人秘密的兰尼斯特家族。这些家族各怀鬼胎，国王的意外身亡，使国家马上陷入无尽的战乱之中。
          </td>
        </tr>
    </table></td>
  </tr>
</table>
<%@ include file="including/footer.jsp"%>
</div>
</body>
</html>
