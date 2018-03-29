<%@page import="java.sql.*,java.util.*"%>
<%
int id=1;


 try{
	 String name=request.getParameter("book_name");
	 String year=request.getParameter("year");
	 String publisher = request.getParameter("publisher");
	 int edition = Integer.parseInt(request.getParameter("edition"));
	 String desc = request.getParameter("discription");
	 double price = Double.parseDouble(request.getParameter("price"));
	 int tcopies = Integer.parseInt(request.getParameter("tcopies"));
	 String auth = request.getParameter("author");
  	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement st=con.createStatement();
    ResultSet check = st.executeQuery("select exists(select * from books)");
    if(check.next()){
    	if(check.getString(1).equals("0")){
        	id=1;
        }
    	else{
    		 ResultSet result = st.executeQuery("select max(b_id) from books");
    		 if(result.next()){
    			 id = Integer.parseInt(result.getString(1)) + 1;
    		 }
    	}
    }
    int i=st.executeUpdate("INSERT INTO `LibraryMainDb`.`Books`(`b_id`,`b_name`,`b_year`,`b_publisher_name`,`b_edition`,`b_discription`,`b_price`,`b_totalcopies`,`b_remainingcopies`,`b_author`) VALUES("+id+",'"+name+"','"+year+"','"+publisher+"',"+edition+",'"+desc+"',"+price+","+tcopies+","+tcopies+",'"+auth+"')");
    response.sendRedirect("bookslist.jsp");
 }
 catch(Exception e){
 	e.printStackTrace();
 	response.sendRedirect("BookForm.jsp");
 }
 %>