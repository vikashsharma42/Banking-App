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
<body onload="makeActive('withdraw')">
	<form action="withdraw.jsp">
		<table class='ta'>
			<tr>
				<td class="la">Enter Amount To be Withdraw:</td>
				<td class='td'><input type="text" value="<%=amount%>"name="amount" class="tb" placeholder="enter amount to be withdraw" onkeyup="return checkLimit(this)" required></td>
				<td class='td'>
				    <button class="wbt" id='wbt' disabled="disabled">Withdraw Money</button>
				</td>
		</table>
		<div>
			<h2 align="center" style="color: red; font-size: 3vw;" id="msg"><%=message%></h2>
		</div>
	</form>
</body>
</head>
</html>