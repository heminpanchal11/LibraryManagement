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

<form class="form-horizontal" action="insertBook.jsp"  method="post">
	
	<div class="form-group">
      <label class="control-label col-sm-2">Book Name:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="book_name" placeholder="Enter Book Name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Year of Publication:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="year" placeholder="Enter year of Publication (YYYY)">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Publisher Name:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="publisher" placeholder="Enter Publisher's Name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Edition:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="edition" placeholder="Enter Edition of Book">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Description:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="discription" placeholder="Enter Description of Book">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Price:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="price" placeholder="Enter Price (in Rupees)">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Total Copies:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="tcopies" placeholder="Enter # of Copies of Book">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Author Name:</label>
      <div class="col-sm-10">
        <input class="col-sm-6" style="background-color:lavender;" type="text" name="author" placeholder="Enter Author Name">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary btn-lg" name="submit">Add Book to Database</button>
      </div>
    </div>
    
    <div style="white-space: pre;">
    
	</div>

<%-- Book id:<input name="book_id" type="text"><br>
Book Name:<input name="book_name" type="text"><br>
Year:<input name="year" type="text"><br>
Pullisher:<input name="publisher" type="text"><br>
Edition:<input name="edition" type="text"><br>
Discription:<input name="discription" type="text"><br>
Price:<input name="price" type="text"><br>
total Copies:<input name="tcopies" type="text"><br>
Author:<input name="author" type="text"><br>
<input name="submit" type="submit" value="Issue!"><br>
--%>
</form>

</body>
</html>