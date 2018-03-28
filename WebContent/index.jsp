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
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
				"root");

		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from BookIssues");
	%>

	<TABLE class="table table-striped">
		<TR>
			<TH>ID</TH>
			<TH>BookId</TH>
			<TH>Name</TH>
			<TH>User Id</TH>
			<TH>Date Issued</TH>
			<TH>Return date</TH>

		</TR>
		<%
			while (resultset.next()) {
		%>
		<TR>
			<TD><%=resultset.getString(1)%></td>
			<TD><%=resultset.getString(2)%></TD>
			<TD><%=resultset.getString(3)%></TD>
			<TD><%=resultset.getString(4)%></TD>
			<TD><%=resultset.getString(5)%></TD>
			<TD><%=resultset.getString(6)%></TD>
		</TR>
		<%
			}
		%>
	</TABLE>
</BODY>
</HTML>