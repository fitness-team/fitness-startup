<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.gymadvicer.utils.*"%>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootswatch.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/mainpage.css">
		<title>Exercises Page</title>
	</head>
	<body>
		<%=BuildPageUtil.createNavbar(false)%>
  		<%=BuildPageUtil.createExerciseCategorySidebar()%>
  		<%=BuildPageUtil.createUserSidebar(true)%>
  		
  		<div class="inner-container">
  			<div class="hero-unit" id="exercise-cat">
			</div>
			<%
				for(int i = 1; i < 10; i++){
					%>
						<hr>
						<%=BuildPageUtil.createExerciseListItem(i) %>
					<% 
				}
			%>
			<hr class="featurette-divider">
  			<%=BuildPageUtil.createFooter() %>>
  		</div> <!-- container -->
	</body>
</html>