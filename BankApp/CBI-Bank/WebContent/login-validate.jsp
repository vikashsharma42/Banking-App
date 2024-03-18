<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/bankapplication","root","vikAsh");
String query="select*from accountinfo where userid=? and password=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("uid"));
ps.setString(2,request.getParameter("pass"));
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	String name=rst.getString(3);
	String acountno=rst.getString(4);
	session.setAttribute("username",name);
	session.setAttribute("useracc",acountno);
	response.sendRedirect("/CBI-Bank");
	return;
}
%>
<jsp:include page="login.jsp"/>
<div class="logdv">
  <h2 style="color:red;">!!!!Userid and password is wrong</h2>
</div>