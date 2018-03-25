<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new issue here</title>
</head>
<%@include file="menu.jsp" %>
<body>
<h1>Insert new book issue here.</h1>
<form action="post"  target="">


Book id:<input name="book_id" type="text"><br>
Book Name:<input name="book_name" type="text"><br>
User id:<input name="user_id" type="text"><br>
Book id:<input name="submit" type="submit" value="Issue!"><br>

</form>

</body>
</html>