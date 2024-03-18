function makeActive(link)
{
    document.getElementById(link).style.color="red";	
}
function checkLimit(tb)
{
	if(tb.value>30000)
 	{
		document.getElementById("msg").innerHTML="sorry !!!! maximum 30000 allowed per transaction";
 	    document.getElementById("wbt").disabled=true;
 	}
	else
	{
		document.getElementById("msg").innerHTML="";
		document.getElementById("wbt").disabled=false;     
	}
}
function checkAccountNo()
{
	if(document.getElementById("acc").value==document.getElementById("uacc").value)
	{
		document.getElementById("msg").innerHTML="!!!You can not transfer to yourself";
		return false;
	}
	return true;
}
function matchPassword()
{
    var currentPassword = document.getElementById("opass").value;
    var newPassword = document.getElementById("pass").value;
    var confirmPassword = document.getElementById("cpass").value;
    if (newPassword !== confirmPassword)
    {
    	alert("New password and confirm password do not match......");
        return false;
    }
    if(currentPassword == confirmPassword)
    {
    	alert("Current password and new password are same......");
        return false;
    }
    return true;
}
