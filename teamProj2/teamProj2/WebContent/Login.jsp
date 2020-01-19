<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Log In</title>
</head>
<%String err =""; 
if(request.getParameter("ErrMsg") == null)
	err="";
else
	err="*INVALID SSN #";
%>
<body style="background-color:lightgrey;">
<h1 align="center" > <font color="white">Welcome !</font></h1>
<form action="CheckLogin">
	<fieldset align="center" style="background-color:skyblue;">
		
		SSN: <input type="text" name="StudentId" value ="<%out.print(err);%>"/>
	</fieldset>
	
	<center style="padding:20px;">
		<input type="submit" value="     Log In     " style="padding:20px;"/>
	</center> 
</form>



<center>
<font color="red"><% 
if(request.getParameter("ErrMsg") != null)
	out.print("Please try again.");
%></font>
</center>
</body>
</html>