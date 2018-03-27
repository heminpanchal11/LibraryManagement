<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("user_id"));
String fname=request.getParameter("user_fname");
String lname=request.getParameter("user_lname");
int sem=Integer.parseInt(request.getParameter("user_sem"));
String email=request.getParameter("user_email");
String gender=request.getParameter("user_gender");
String address=request.getParameter("user_address");
String contact=request.getParameter("user_contact");
int bookcount = 0;

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
   				"root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("INSERT INTO `LibraryMainDb`.`Users`(`u_id`,`u_firstname`,`u_lastname`,`u_semester`,`u_email`,`u_gender`,`u_address`,`u_contact`,`u_bookcount`) VALUES("+id+",'"+fname+"','"+lname+"',"+sem+",'"+email+"','"+gender+"','"+address+"','"+contact+"',"+bookcount+")");
           response.sendRedirect("userslist.jsp");
        }
        catch(Exception e){
        
        }
        %>