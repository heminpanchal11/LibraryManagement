<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("book_id"));
String name=request.getParameter("book_name");
String year=request.getParameter("year");
String publisher = request.getParameter("publisher");
int edition = Integer.parseInt(request.getParameter("edition"));
String desc = request.getParameter("discription");
double price = Double.parseDouble(request.getParameter("price"));
int tcopies = Integer.parseInt(request.getParameter("tcopies"));
String auth = request.getParameter("author");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root",
   				"root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("INSERT INTO `LibraryMainDb`.`Books`(`b_id`,`b_name`,`b_year`,`b_publisher_name`,`b_edition`,`b_discription`,`b_price`,`b_totalcopies`,`b_remainingcopies`,`b_author`) VALUES("+id+",'"+name+"','"+year+"','"+publisher+"',"+edition+",'"+desc+"',"+price+","+tcopies+","+tcopies+",'"+auth+"')");
           response.sendRedirect("bookslist.jsp");
        }
        catch(Exception e){
        
        }
        %>