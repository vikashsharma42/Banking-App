<%@ include file="menu.jsp"%>
<html>
<head>
<body onload="makeActive('deposit')">
<form action="deposite.jsp">
		<table class='ta'>
		<tr>
		<td class="la">Enter Amount To be Deposit:</td>
		<td class='td'><input type="text" name="amount" class="tb" placeholder="enter amount to be deposit" required></td>
		<td class='td'><button class="bt">Deposit Money</button>
		</td>
		</table>
	</form>
</body>
</head>
</html>