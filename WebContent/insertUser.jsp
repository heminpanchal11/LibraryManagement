<%@page import="java.sql.*,java.util.*"%>
<%
int id=1;

 try{
	 String fname=request.getParameter("user_fname");
	 String lname=request.getParameter("user_lname");
	 int sem=Integer.parseInt(request.getParameter("user_sem"));
	 String email=request.getParameter("user_email");
	 String gender=request.getParameter("user_gender");
	 String address=request.getParameter("user_address");
	 String contact=request.getParameter("user_contact");
	 int bookcount = 0;
 	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement st=con.createStatement();
    ResultSet check = st.executeQuery("select exists(select * from users)");
    if(check.next()){
    	if(check.getString(1).equals("0")){
        	id=1;
        }
    	else{
    		 ResultSet result = st.executeQuery("select max(u_id) from users");
    		 if(result.next()){
    			 id = Integer.parseInt(result.getString(1)) + 1;
    		 }
    	}
    }
    int i=st.executeUpdate("INSERT INTO `LibraryMainDb`.`Users`(`u_id`,`u_firstname`,`u_lastname`,`u_semester`,`u_email`,`u_gender`,`u_address`,`u_contact`,`u_bookcount`) VALUES("+id+",'"+fname+"','"+lname+"',"+sem+",'"+email+"','"+gender+"','"+address+"','"+contact+"',"+bookcount+")");
    response.sendRedirect("userslist.jsp");
 }
 catch(Exception e){
 	e.printStackTrace();
 	response.sendRedirect("userform.jsp");
 }
    %>