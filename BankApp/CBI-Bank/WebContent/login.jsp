<%
if(session.getAttribute("username")!=null)
{
	response.sendRedirect("/CBI-Bank");
	return;
}
%>
<link href='css/style.css' rel='stylesheet'>
<img src="images/building.jpg" height="40%" width="100%">
<hr style="border:.2vw dashed red">
	<%
	String name=(String)session.getAttribute("username");
	String account=(String)session.getAttribute("useracc");
	%>
	<html>
	<body style='background-color:#66ccaa;'>
	<form action="login-validate.jsp" method="post">
	<table class='login'>
		<tr>
			<td colspan="2">
				<div align="center" class="dv">User Login Form</div>
			</td>
		</tr>
		<tr>
			<td class="logintd">Enter User Id:</td>
			<td class='logintd'><input type="text" id="uid" name="uid" class="tb" placeholder="Enter Your Userid" required><br></td>
		</tr>
		<tr>
			<td class="logintd">Enter Password:</td>
			<td class='logintd'><input type="password" id="pass" name="pass" class="tb" placeholder="Enter Your password" required><br></td>
		</tr>
		<tr>
			<td class='logintd' colspan="2" align="right">
				<button class="bt">Login</button>
			</td>
		</tr>
	</table>
	</form>
	</body>
</html>