package hostel_mana;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.csvreader.CsvReader;

/**
 * Servlet implementation class UpdateDatabase
 */
public class UpdateDatabase extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDatabase() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        PrintWriter out = response.getWriter();
        try {           
            String filename = (String) getServletContext().getAttribute("fileName");
            out.println("FileName : "+filename);
            CsvReader products = new CsvReader(filename);
            products.readHeaders();

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hostel_management1","yash","yash@2420");
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();

            while (products.readRecord())
            {
            	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
              
                String student_id = products.get("student_id");
                String student_name = products.get("student_name");
                String student_address = products.get("student_address");
                String adhaarno = products.get("adhaarno");
                String email = products.get("email");
                String room_no = products.get("room_no");
                String hostel_id = products.get("hostel_id");
                String reg_id = products.get("reg_id");
                String year_of_engg = products.get("year_of_engg");
                String DOB = products.get("DOB");
                System.out.println(simpleDateFormat.parse(DOB));
                
                String deposit=products.get("deposit");
                String phone_no = products.get("mobile_no");
                String  gaurdian_id= products.get("gaurdian_id");    
                String gaurdian_email = products.get("gaurdian_email");    
                String gaurdian_name = products.get("gaurdian_name");    
                String gaurdian_phone = products.get("gaurdian_phone");
                String payment_date = products.get("payment_date"); 
                System.out.println(simpleDateFormat.parse(payment_date));
                String payment_id = products.get("payment_id");  
               
                
                String amount = products.get("amount");  
                String status = products.get("status");  
               
        
                
                String query = "insert into student values ("; 
                query += Integer.parseInt(student_id)+", '";
                query += student_name+"', '";
                query += student_address+"','";
                query += adhaarno+"', '";
                query +=  email+"', ";
                query += Integer.parseInt(room_no)+", ";
                query += Integer.parseInt(hostel_id)+", '";
                query +=  reg_id+"', ";
                query += Integer.parseInt(year_of_engg)+", '";
                query += DOB+"', ";
                query += Integer.parseInt(deposit)+")";

                out.println("Query : "+query);
                st.executeUpdate(query);
                
                String query1="insert into student_mobile values(";
                query1+=Integer.parseInt(student_id)+",'";
                query1+=phone_no+"')";
                out.println("Query : "+query1);
                st1.executeUpdate(query1);
                
                String query2="insert into gaurdian values(";
                query2+=Integer.parseInt(gaurdian_id)+",'";
                query2+=gaurdian_name+"',";
                query2+=Integer.parseInt(student_id)+",'";
                query2+=gaurdian_phone+"','";
                query2+=gaurdian_email+"')";
                out.println("Query : "+query2);
                st2.executeUpdate(query2);
                
              
                
                String query3="insert into payment values(";
                query3+=Integer.parseInt(payment_id)+",";
                query3+= Integer.parseInt(student_id)+", '";
                query3+=payment_date+"',";
                query3+=Integer.parseInt(amount)+",'";
                query3+=status+"')";
                out.println("Query : "+query3);
                st3.executeUpdate(query3);
                 
            }
            out.println("Data inserted...");
            products.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}

