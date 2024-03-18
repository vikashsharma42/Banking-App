<%@ page import="java.sql.*"%>
<%
String name=(String)session.getAttribute("username");
String account=(String)session.getAttribute("useracc");
String curpass=request.getParameter("curpass");
String newpass= request.getParameter("newpass");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/bankapplication", "root", "vikAsh");
String query="select * from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,account);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	String currentpass=rst.getString(2);
	if(currentpass!=curpass)
	{
		%>
		<jsp:include page="change-password-form.jsp">
			<jsp:param name="msg" value="!!!!Currrent password is wrong" />
		</jsp:include>
		<%
		return;
	}
}
String query1 = "update accountinfo set password=? where accountno=?";
PreparedStatement ps1 = cn.prepareStatement(query1);
ps1.setString(1,newpass);
ps1.setString(2,account);
ps1.executeUpdate();
%>
<link href='css/style.css' rel='stylesheet'>
<body onload="makeActive('logout')"> 
<div>
   <img src="images/rbi.jpg" width="100%" height="95%">
</div>
<hr>
<div class='dvv'align="center">
  <h2><font color="cyan">Dear <%=name%>,&nbsp;</font>Your password has been changed..</h2>
</div>
<div style='margin-top:13vw;font-family:lucida bright;'align="right">
<a href='/CBI-Bank' style='font-size:2vw;color:#8E44AD'>Click here to login</a>
</div>
</body>
<%
session.invalidate();
%>

