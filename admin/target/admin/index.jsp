<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
<%if( request.getRemoteAddr().equals("127.0.0.1")) {%>
<form action="login" method="post">
<input type="text" name="userI D"/>
<input type="password" name="password"/>
<input type="submit" name="submit"/>
</form>

<%}else{
	out.print(request.getRemoteAddr());
	}%>

</body>
</html>