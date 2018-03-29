<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
			"root");
	Statement check=connection.createStatement();
	ResultSet res = check.executeQuery("select exists(select * from bookissues where i_u_id="+id+")");
	if(res.next()){
		if(res.getString(1).equals("0")){
			Statement st=connection.createStatement();
			int i=st.executeUpdate("DELETE FROM librarymaindb.users	WHERE u_id="+id);
			response.sendRedirect("userslist.jsp");
		}
		else{
			out.println("<meta http-equiv='refresh' content='2;URL=userslist.jsp'>");
    		out.println("<div><strong>Can't! </strong>Student has issued books!</div>");
		}
	}	
}
catch(Exception e)
{

}
%>