<%@ include file="menu.jsp"%>
<%
	String acc = request.getParameter("acc");
	String message = request.getParameter("msg");
	if (acc == null)
	{
		acc = message = "";
	}
%>

<html>
<head>
<body onload="makeActive('transfer')">
	<form action="validate-transfer.jsp">
		<input type="hidden" name="uacc" class="tb" id="uacc" value="<%=session.getAttribute("useracc")%>">
		<table class='ta'>
			<tr>
				<td class="la">Enter Account number:</td>
				<td class='td'><input type="text" name="acc" id="acc"class="tb" value="<%=acc%>" placeholder="Enter Account Number" required></td>
				<td class='td'><button class="bt" onclick="return checkAccountNo()">Submit</button></td>
		</table>
		<div>
			<h3 align="center" style="color: red; font-size: 3vw;" id="msg"><%=message%></h3>
		</div>
	</form>
</body>
</head>
</html>