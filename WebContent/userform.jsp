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

<form class="form-horizontal" action="insertUser.jsp"  method="post">

	<div class="form-group">
      <label class="control-label col-sm-2">User ID:</label>
      <div class="col-sm-10">
        <input type="text" name="user_id" placeholder="Enter Student ID">
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2">User First Name:</label>
      <div class="col-sm-10">
        <input type="text" name="user_fname" placeholder="Enter Student First Name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">User Last Name:</label>
      <div class="col-sm-10">
        <input type="text" name="user_lname" placeholder="Enter Student Last Name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Semester:</label>
      <div class="col-sm-10">
        <input type="text" name="user_sem" placeholder="Enter Semester in Which Student is Studying">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Email:</label>
      <div class="col-sm-10">
        <input type="text" name="user_email" placeholder="Enter Student Email">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Gender:</label>
      <div class="col-sm-10">
        <input type="text" name="user_gender" placeholder="Male/Female">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Address:</label>
      <div class="col-sm-10">
        <input type="text" name="user_address" placeholder="Enter Student Address">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Contact No.:</label>
      <div class="col-sm-10">
        <input type="text" name="user_contact" placeholder="Enter contact Number of Student">
      </div>
    </div>
    
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name="submit">Add Student to Database</button>
      </div>
    </div>
    
    <div style="white-space: pre;">
    
	</div>
	
<%--User id:<input name="user_id" type="text"><br>
User First Name:<input name="user_fname" type="text"><br>
User Last Name:<input name="user_lname" type="text"><br>
User sem:<input name="user_sem" type="text"><br>
User email:<input name="user_email" type="text"><br>
User gender:<input name="user_gender" type="text"><br>
User address:<input name="user_address" type="text"><br>
User contact:<input name="user_contact" type="text"><br>
<input name="submit" type="submit" value="Issue!"><br>
 --%>
 
 
</form>

</body>
</html>