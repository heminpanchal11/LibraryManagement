<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="insertUser.jsp"  method="post">

User id:<input name="user_id" type="text"><br>
User First Name:<input name="user_fname" type="text"><br>
User Last Name:<input name="user_lname" type="text"><br>
User sem:<input name="user_sem" type="text"><br>
User email:<input name="user_email" type="text"><br>
User gender:<input name="user_gender" type="text"><br>
User address:<input name="user_address" type="text"><br>
User contact:<input name="user_contact" type="text"><br>
<input name="submit" type="submit" value="Issue!"><br>

</form>

</body>
</html>