<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<script src="js/script.js"></script>
<img src="images/building.jpg" height="40%" width="100%">
<html>
<head>
<link href='css/style.css' rel='stylesheet'>
</head>
<body style='background-color:#00aaee;'>
	<hr style="border:.2vw dashed red;">
<%
String name=(String)session.getAttribute("username");
String account=(String)session.getAttribute("useracc");
%>
     <table class='tbl'>
     <tr>
     <td align='center'><span class='sp'>User Name:</span><span class="spa"><%=name %></span></td>
     <td align='center'><span class='sp'>Account Number:</span><span class="spa"><%=account %></span></td>
     </tr>
     </table>
     <hr style="border: .2vw dashed red">
     <hr style="border: .2vw solid blue;margin-top:2.4vw;">
     <table border="1">
     <tr>
      <td align='center'><a id="home" class="tda" href="/CBI-Bank">Home</a></td>
      <td align='center'><a id="balance" class="tda" href="showbalance.jsp">show Balance</a></td>
      <td align='center'><a id="deposit" class="tda" href="deposit-form.jsp">Deposit Money</a></td>
      <td align='center'><a id="withdraw" class="tda" href="withdraw-form.jsp">Withdraw Money</a></td>
      <td align='center'><a id="transfer" class="tda" href="transfer-form.jsp">Transfer Money</a></td>
      <td align='center'><a id="change pass" class="tda" href="change-password-form.jsp">Change Password</a></td>
      <td align='center'><a id="logout" class="tda" href="logout.jsp">Logout</a></td>
     </tr>
     </table>
     <hr style="border: .2vw solid blue">
</body>
</html>