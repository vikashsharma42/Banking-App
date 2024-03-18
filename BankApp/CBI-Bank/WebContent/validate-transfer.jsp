<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/bankapplication","root","vikAsh");
String query="select * from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("acc"));
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	session.setAttribute("accno",rst.getString(4));
	session.setAttribute("acholdername",rst.getString(3));
	%>
	<%@ include file="menu.jsp"%>
	<%
	String amount = request.getParameter("amount");
	String message = request.getParameter("msg");
	if (amount == null) 
	{
		amount = message = "";
	}
%>
<html>
<head>
<body onload="makeActive('transfer')">
	<form action="transfer-money.jsp">
		<table class='ta' style='background-color:#0011bb'>
			<tr>
				<td class="la">Enter Amount:</td>
				<td class='td'><input type="text" value="<%=amount%>"name="amount" class="tb" placeholder="Enter Amount To Be Transfer" onkeyup="return checkLimit(this)" required></td>
				<td class='td'>
				    <button class="wbt" id='wbt' disabled="disabled" onclick="return checkAccountNo()">Transfer Money</button>
				</td>
		</table>
		<div>
			<h2 align="center" style="color: red; font-size: 3vw;" id="msg"><%=message%></h2>
		</div>
	</form>
</body>
</head>
</html>
<%
	return;
}
%>
<jsp:include page="transfer-form.jsp">
	<jsp:param name="msg" value="Sorry !!! given account number does not exist" />
</jsp:include> 