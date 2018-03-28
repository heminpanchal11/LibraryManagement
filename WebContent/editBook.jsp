<%@page import="java.sql.*,java.util.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("book_name");
String year=request.getParameter("year");
String publisher = request.getParameter("publisher");
int edition = Integer.parseInt(request.getParameter("edition"));
String desc = request.getParameter("discription");
double price = Double.parseDouble(request.getParameter("price"));
String auth = request.getParameter("author");

 try{
  Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement st=con.createStatement();
    int i=st.executeUpdate("UPDATE LibraryMainDb.Books SET b_name='"+name+"' , b_year='"+year+"' , b_publisher_name='"+publisher+"' , b_edition="+edition+" ,b_discription='"+desc+"' ,b_price="+price+" , b_author='"+auth+"' WHERE b_id="+id);
    response.sendRedirect("bookslist.jsp");
 }
 catch(Exception e){
 	e.printStackTrace();
 }
 %>