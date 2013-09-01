<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="java.util.Collection,  
                 java.util.ArrayList"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.gymAdviser.dto.Admin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>

<body>
	<jsp:useBean id="admin" class="org.gymAdviser.dto.Admin" scope="session"></jsp:useBean>
	<h3>Admin: <jsp:getProperty property="adminName" name="admin"/>
	</h3>
	
</body>
</html>