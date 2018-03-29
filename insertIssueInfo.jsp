<%@page import="java.sql.*,java.util.*"%>
<%
int s_id=Integer.parseInt(request.getParameter("student_id"));
int b_id=Integer.parseInt(request.getParameter("book_id"));
int id=1;

 try{
 	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement st=con.createStatement();
    ResultSet s_id_check = st.executeQuery("select exists(select * from users where u_id="+s_id+")");
    if(s_id_check.next()){
    	if(s_id_check.getString(1).equals("1")){
    		ResultSet b_id_check = st.executeQuery("select exists(select * from books where u_id="+b_id+")");
    		if(b_id_check.next()){
    			if(b_id_check.getString(1).equals("1")){
    				ResultSet check = st.executeQuery("select exists(select * from bookissues)");
    				if(check.next()){
    			    	if(check.getString(1).equals("0")){
    			        	id=1;
    			        }
    			    	else{
    			    		 ResultSet result = st.executeQuery("select max(i_id) from bookissues");
    			    		 if(result.next()){
    			    			 id = Integer.parseInt(result.getString(1)) + 1;
    			    		 }
    			    	}
    				}
    				int i=st.executeUpdate("INSERT INTO bookissues(i_id,i_b_id,i_u_id,i_date,i_returndate) values("+id+", "+b_id+", "+s_id+", CURDATE(), DATE_ADD(CURDATE(),INTERVAL 15 DAY))");
    				
    			}
    			else{
    				request.setAttribute("alertMsg", "Book with this ID doesn't exist");
    	    		RequestDispatcher rd=request.getRequestDispatcher("/addissue.jsp");  
    	    		rd.include(request, response);
    			}
    		}
    	}
    	else{
    		request.setAttribute("alertMsg", "Student with this ID doesn't exist");
    		RequestDispatcher rd=request.getRequestDispatcher("/addissue.jsp");  
    		rd.include(request, response);
    	}
    }
   // response.sendRedirect("index.jsp");
 }
 catch(Exception e){
 	e.printStackTrace();
 }
 %>