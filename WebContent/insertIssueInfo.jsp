<%@page import="java.sql.*,java.util.*"%>
<%

int id=1;

 try{
	int b_id=Integer.parseInt(request.getParameter("book_id"));
	int s_id=Integer.parseInt(request.getParameter("student_id"));
 	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/LibraryMainDb?", "root","root");
    Statement s_id_st=con.createStatement();
    Statement b_id_st=con.createStatement();
    ResultSet s_id_result = s_id_st.executeQuery("select exists(select * from users where u_id="+s_id+")");
    ResultSet b_id_result = b_id_st.executeQuery("select exists(select * from books where b_id="+b_id+")");
    while(s_id_result.next() && b_id_result.next()){
    	if(s_id_result.getString(1).equals("1") && b_id_result.getString(1).equals("1")){
    		Statement uBookCnt_st=con.createStatement();
    	    Statement bcopies_st=con.createStatement();
    		ResultSet uBookCnt_result = uBookCnt_st.executeQuery("select exists(select * from users where u_id="+s_id+" and u_bookcount<2)");
    		ResultSet bcopies_result = bcopies_st.executeQuery("select exists(select * from books where b_id="+b_id+" and b_remainingcopies>0)");
    		
    		while(uBookCnt_result.next() && bcopies_result.next()){
    			
    			if(uBookCnt_result.getString(1).equals("1") && bcopies_result.getString(1).equals("1")){
    				
    				Statement st=con.createStatement();
        			ResultSet check = st.executeQuery("select exists(select * from bookissues)");
        			if(check.next()){
        				if(check.getString(1).equals("0")){
        					id=1;
        					System.out.println("here");
        				}
        				else{
        					ResultSet res = st.executeQuery("select max(i_id) from bookissues");
        					if(res.next()){
        						id = Integer.parseInt(res.getString(1))+1;
        					}
        				}
        			}
        			int i=st.executeUpdate("INSERT INTO bookissues(i_id,i_b_id,i_u_id,i_date,i_returndate) values("+id+", "+b_id+", "+s_id+", CURDATE(), DATE_ADD(CURDATE(),INTERVAL 15 DAY))");
        			int a=st.executeUpdate("update books set b_remainingcopies = b_remainingcopies-1 where b_id="+b_id);
        			int b=st.executeUpdate("update users set u_bookcount = u_bookcount+1 where u_id="+s_id);
        			response.sendRedirect("index.jsp");
        		}
        		else{
        			out.println("<meta http-equiv='refresh' content='2;URL=addissue.jsp'>");
            		out.println("<div><strong>Can't!</strong> All books are issued or You can't issue more than 2 books!</div>");
        		}
    		}
    	}
    	else{
    		out.println("<meta http-equiv='refresh' content='2;URL=addissue.jsp'>");
    		out.println("<div><strong>Wrong!</strong> Book ID or Student ID is incorrect!</div>");
    	}
    }
 }
 catch(Exception e){
	 e.printStackTrace();
	 response.sendRedirect("addissue.jsp");
 }
 %>