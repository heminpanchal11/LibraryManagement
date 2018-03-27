<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="menu.jsp" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>

<HTML>
<HEAD>
<TITLE>Welcome to the Hitarth Bookstore </TITLE>
</HEAD>
<body>


	</list>

	<%
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
				"root");

		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from Books");
	%>

	<TABLE class="table table-striped">
		<TR>
			<TH>ID</TH>
			<TH>Book name</TH>
			<TH>Year</TH>
			<TH>Publisher Name</TH>
			<TH>Edition</TH>
			<TH>Description</TH>
			<TH>Price</TH>
			<TH>Book Copies</TH>
			<TH>Remaining</TH>
			<TH>Author</TH>
			<TH>Edit</TH>
			<TH>Delete</TH>



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
			<TD><%=resultset.getString(7)%></TD>
			<TD><%=resultset.getString(8)%></TD>
			<TD><%=resultset.getString(9)%></TD>
			<TD><%=resultset.getString(10)%></TD>
			<TD><a href="editBook?id=<%=resultset.getString(1)%>">Edit</a></td>
			<TD><a href="deleteBook.jsp?id=<%=resultset.getString(1)%>">Delete</a></td>
		</TR>
		<%
			}
		%>
	</TABLE></body>

</HTML>