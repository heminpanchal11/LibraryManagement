<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
		"root");

Statement st=connection.createStatement();
int i=st.executeUpdate("DELETE FROM librarymaindb.users	WHERE u_id="+id);
response.sendRedirect("userslist.jsp");
}
catch(Exception e)
{

}
%>