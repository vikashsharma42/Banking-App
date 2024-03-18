<%@ page import="java.sql.*"%>
<%
	int withdraw = Integer.parseInt(request.getParameter("amount"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/bankapplication", "root", "vikAsh");
	String query = "select amount from accountinfo where accountno=?";
	PreparedStatement ps = cn.prepareStatement(query);
	ps.setString(1,(String) session.getAttribute("useracc"));
	ResultSet rst = ps.executeQuery();
	rst.next();
	int total = rst.getInt(1);
	if (withdraw > total)
	{
%>
<jsp:include page="withdraw-form.jsp">
	<jsp:param name="msg" value="Sorry !!! insufficient balance to withdraw" />
</jsp:include>
<%
return;
	}
	String query1 = "update accountinfo set amount=amount-? where accountno=?";
	PreparedStatement ps1 = cn.prepareStatement(query1);
	ps1.setInt(1,withdraw);
	ps1.setString(2, (String) session.getAttribute("useracc"));
	ps1.executeUpdate();
%>
<%@ include file="menu.jsp"%>
<body onload="makeActive('withdraw')">
	<div>
		<h2 align="center" style="color: yellow; font-size: 3vw;">Dear user, amount<font color="blue">&#8377;<%=withdraw %></font>debited from your account</h2>
	</div>
</body>