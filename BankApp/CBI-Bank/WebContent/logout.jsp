<link href='css/style.css' rel='stylesheet'>
<body onload="makeActive('logout')"> 
<div>
   <img src="images/thanks.jpg" width="100%" height="95%">
</div>
<hr>
<div class='dvv'align="center">
  <h2><font color="cyan"><%=session.getAttribute("username")%>,&nbsp;</font>Thank you for using app,<br><br>have a good day</h2>
</div>
<div style='margin-top:13vw;font-family:lucida bright;'align="right">
<a href='/CBI-Bank' style='font-size:2vw;color:#8E44AD'>Click here for more transaction</a>
</div>
</body>
<%
session.invalidate();
%>