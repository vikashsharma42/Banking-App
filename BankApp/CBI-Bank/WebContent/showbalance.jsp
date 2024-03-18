<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/bankapplication","root","vikAsh");
String query="select amount from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,(String)session.getAttribute("useracc"));
ResultSet rst=ps.executeQuery();
rst.next();
String amount=rst.getString(1);
%>
<body onload="makeActive('balance')">
<div>
   <h2 align="center"style="color:yellow;font-size:3vw;">Dear user, current balance is amount <font color="blue">&#8377;<%=amount %></font></h2>
</div>
</body>