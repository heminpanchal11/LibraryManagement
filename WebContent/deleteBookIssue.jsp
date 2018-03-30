<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
			"root");
	Statement getIds = connection.createStatement();
	ResultSet result = getIds.executeQuery("select i_u_id,i_b_id from bookissues where i_id="+id);
	if(result.next()){
		String sid = result.getString(1);
		String bid = result.getString(2);
		int a=getIds.executeUpdate("update users set u_bookcount=u_bookcount-1 where u_id="+sid);
		int b=getIds.executeUpdate("update books set b_remainingcopies = b_remainingcopies+1 where b_id="+bid);
		Statement st=connection.createStatement();
		int i=st.executeUpdate("DELETE FROM librarymaindb.bookissues WHERE i_id="+id);
		response.sendRedirect("index.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("index.jsp");
}
%>