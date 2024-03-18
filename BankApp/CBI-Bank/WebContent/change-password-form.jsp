
<script src="js/script.js"></script>
<link href='css/style.css' rel='stylesheet'>
<img src="images/building.jpg" height="40%" width="100%">
<hr style="border:.2vw dashed red">
<%
/*String name=(String)session.getAttribute("username");
String account=(String)session.getAttribute("useracc");*/
String message = request.getParameter("msg");
if(message==null)
{
	message = "";
}
%>
	<html>
	<body style='background-color:#66ccaa;'onload="makeActive('deposite')">
	<form action="password-changed.jsp" method="post">
	<table class='login'>
		<tr>
			<td class="logintd">Enter Current Password:</td>
			<td class='logintd'><input type="text" id="opass" name="curpass"class="tb" placeholder="Enter Current Password"><br></td>
		</tr>
		<tr>
			<td class="logintd">Enter New Password:</td>
			<td class='logintd'><input type="password" id="pass" name="newpass" class="tb" placeholder="Enter New password"><br></td>
		</tr>
		<tr>
			<td class="logintd">Enter Confirm Password:</td>
			<td class='logintd'><input type="password" id="cpass" name="confirmpass" class="tb" placeholder="Enter Confirm password"><br></td>
		</tr>
		<tr>
			<td class='logintd' colspan="2" align="right">
				<button class="bt" onclick="return matchPassword()">Change Password</button>
			</td>	   
			</table>
			<div>
			<h2 align="center" style="color: red; font-size: 3vw;" id="msg"><%=message%></h2>
		</div>
	</form>
	</body>
</html>