package hostel_mana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class attend extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In Attend");
		String[] s=request.getParameterValues("attendance");
		String list=Arrays.toString(s);
		String str=list.replaceAll(","," ").replace("["," ").replace("]"," ").replaceAll(" ","");
		String str2=str.toUpperCase();

	     String subject = "Application";
	     String message =  "Your Ward was Absent Today !";
	     String user ="acm6.pict@gmail.com";
	     String pass = "PascPune@2019";

		System.out.println(str2);
	    int var=0;
		    String sql1="select student_id  From student ORDER BY student_id ASC;";
		    String query1="select * from leave2 where student_id =? and CURDATE() between start and end";
		    String sql="insert into  attendance values(?,?,?)";
		    String sql2="select email as gaurdian_email from gaurdian where student_id=?";
		    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
		    String msg = " ";
		    int i=0;
		    int attend_id=0;
		    try
		    {
		        Class.forName("com.mysql.cj.jdbc.Driver");

		        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");
		        PreparedStatement st=conn.prepareStatement(sql1);
		        ResultSet rs=st.executeQuery(sql1);
		        while(rs.next())
		        {
		        PreparedStatement st2=conn.prepareStatement(sql);
		        int id=rs.getInt("student_id");
		        System.out.println(id);
		        PreparedStatement st1=conn.prepareStatement(query1);
		    	st1.setInt(1, id);
	        	ResultSet rs1=st1.executeQuery();
	        	  System.out.println(var);
		         if(!rs1.next())
		         {
		           i=st2.executeUpdate("insert into attendance values (" + id +",CURDATE(),'"+str2.charAt(var)+"')");
		           System.out.println("yaaa");

		           if(i>0)
		        {

		        	if(str2.charAt(var) == 'A')
		        	 {
		        		 PreparedStatement st3=conn.prepareStatement(sql2);
		        		 st3.setInt(1, id);
		 		        ResultSet rs3=st3.executeQuery();
		 		        if(rs3.next())
		 		        {
		 		  	         String to = rs3.getString("gaurdian_email");
		        		     SendMail.send(to,subject, message, user, pass);
		        		     System.out.println("Mail Sent Successfully");

		 		        }
		 		    }
		            var++;
		        	  msg = "HELLO" + attend_id + "!Your attendance is SUCESSFULL";
		        }
		        else
		        {
		            msg = "HELLO" + attend_id + "!Your attendance is UNSUCESSFULL";

		        }

		         }
		      }
		        response.sendRedirect("attendance.jsp");
		        st.close();
		        System.out.println("test :" + msg);
		    }
		    catch(ClassNotFoundException |SQLException e)
		    {
		    	e.printStackTrace();
		    } catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
