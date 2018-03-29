<%@page import="java.sql.*,java.util.*"%>
<%

int id=Integer.parseInt(request.getParameter("id"));
 try{
	 
	 String fname=request.getParameter("user_fname");
	 String lname=request.getParameter("user_lname");
	 int sem=Integer.parseInt(request.getParameter("user_sem"));
	 String email=request.getParameter("user_email");
	 String gender=request.getParameter("user_gender");
	 String address=request.getParameter("user_address");
	 String contact=request.getParameter("user_contact");
  	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement st=con.createStatement();
    int i=st.executeUpdate("UPDATE LibraryMainDb.users SET u_firstname='"+fname+"' , u_lastname='"+lname+"' , u_semester="+sem+" , u_email='"+email+"' ,u_gender='"+gender+"' ,u_address='"+address+"' , u_contact='"+contact+"' WHERE u_id="+id);
    response.sendRedirect("userslist.jsp");
 }
 catch(Exception e){
 	e.printStackTrace();
 	response.sendRedirect("editUserForm.jsp?id="+id);
 }
 %>