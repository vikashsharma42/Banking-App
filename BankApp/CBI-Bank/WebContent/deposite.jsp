<%@ page import="java.sql.*"%>
<%@ include file="menu.jsp"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/bankapplication","root","vikAsh");
String query="update accountinfo set amount=amount+? where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
int amount=Integer.parseInt(request.getParameter("amount"));
ps.setInt(1,amount);
ps.setString(2,(String)session.getAttribute("useracc"));
ps.executeUpdate();
%>
<body onload="makeActive('deposite')">
<div>
   <h2 align="center"style="color:yellow;font-size:3vw;">Dear user, amount<font color="blue">&#8377;<%=amount %></font>credited into your account</h2>
</div>
</body>