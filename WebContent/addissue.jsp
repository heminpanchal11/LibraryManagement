<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new issue here</title>
</head>
<body>

<form class="form-horizontal" action="insertIssueInfo.jsp"  method="post">

	<div class="form-group">
      <label class="control-label col-sm-2">Book ID:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="book_id" placeholder="Enter book ID">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Student ID:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="student_id" placeholder="Enter student ID">
      </div>
    </div>
	
	
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary btn-lg" name="submit">Add Issue Info to Database</button>
      </div>
    </div>
    
    <div style="white-space: pre;">
    
	</div>
<%--Book id:<input name="book_id" type="text"><br>
Book Name:<input name="book_name" type="text"><br>
User id:<input name="user_id" type="text"><br>
Book id:<input name="submit" type="submit" value="Issue!"><br>
 --%>

</form>

</body>
</html>