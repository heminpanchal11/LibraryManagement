<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
%>

<HTML>
<HEAD>
<TITLE>Welcome to the Hitarth Bookstore </TITLE>
</HEAD>
<%@include file="menu.jsp" %>
<BODY>
	<H1>Welcome to the Bookstore </H1>
	<list>
	<li><a href="addissue.jsp"> Issue</a></li>
	
	</list>

	<%
		int b_id,u_id;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
				"root");

		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from BookIssues");
		/* while (resultset.next()) {
			b_id = Integer.parseInt(resultset.getString(2));
			u_id = Integer.parseInt(resultset.getString(3));
		}
		//
		while (user_result.next()) {
			String fname = user_result.getString(1);
			String lname = user_result.getString(2);
		}*/
	%>
	
	

	<TABLE class="table table-striped">
		<TR>
			<TH>ID</TH>
			<TH>Book Id</TH>
			<TH>Book Name</TH>
			<TH>User Id</TH>
			<TH>User First Name</TH>
			<TH>User Last Name</TH>
			<TH>Date Issued</TH>
			<TH>Return date</TH>

		</TR>
		<%
			while (resultset.next()) {
				
				b_id = Integer.parseInt(resultset.getString(2));
				u_id = Integer.parseInt(resultset.getString(3));
				Statement uStat = connection.createStatement();
				Statement bStat = connection.createStatement();
				ResultSet user_result = uStat.executeQuery("select u_firstname,u_lastname from users where u_id="+u_id);
				ResultSet book_result = bStat.executeQuery("select b_name from books where b_id="+b_id);
				while(user_result.next() && book_result.next()){
				
		%>
		<TR>
			<TD><%=resultset.getString(1)%></td>
			<TD><%=resultset.getString(2)%></TD>
			<TD><%=book_result.getString(1)%></TD>
			<TD><%=resultset.getString(3)%></TD>
			<TD><%=user_result.getString(1)%></TD>
			<TD><%=user_result.getString(2)%></TD>
			<TD><%=resultset.getString(4)%></TD>
			<TD><%=resultset.getString(5)%></TD>
		</TR>
		<%		}
			}
		%>
	</TABLE>
</BODY>
</HTML>