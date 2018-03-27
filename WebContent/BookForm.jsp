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

<form action="insertBook.jsp"  method="post">

Book id:<input name="book_id" type="text"><br>
Book Name:<input name="book_name" type="text"><br>
Year:<input name="year" type="text"><br>
Pullisher:<input name="publisher" type="text"><br>
Edition:<input name="edition" type="text"><br>
Discription:<input name="discription" type="text"><br>
Price:<input name="price" type="text"><br>
total Copies:<input name="tcopies" type="text"><br>
Author:<input name="author" type="text"><br>
<input name="submit" type="submit" value="Issue!"><br>

</form>

</body>
</html>