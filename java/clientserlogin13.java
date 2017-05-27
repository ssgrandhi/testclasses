import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class clientserlogin13 extends HttpServlet
{
    String str1="",str2="";
    String id,pw;
	Connection con;
	Statement st;
	ResultSet rs;
	private boolean flagValue=false;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws  IOException,ServletException
	{
    	  res.setContentType("text/html");
	     PrintWriter out=res.getWriter();
	     id=req.getParameter("clientid");
	     pw=req.getParameter("pwd");
		 out.println("<html>");
		  out.println("<head>");
		  out.println("</head>");
		  out.println("<body>");
	  	  out.println("<br>");
	 try
	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:netConference");
	st=con.createStatement();
	rs=st.executeQuery("select * from necdata1");
	while(rs.next())
	{
		str1=rs.getString(1);
		str2=rs.getString(2);
	    if(id.equalsIgnoreCase(str1) && pw.equalsIgnoreCase(str2))
		{
			 flagValue=true;
			 out.println("<br>");
			 out.println("<h1>You Are An Authenticated User </h1>");
			  out.println("<br>");
			  out.println(" <blink>Congratulations !!!!!!!! </blink> ");
			  out.println("<br>");
			  out.println("<br>");
			  out.println("<A HREF='http://localhost:8081/servlet/clientlist'> Go To The List Of Persons </A>");
			  break;
		}
	}
    if(!flagValue)
	{
	  	out.println("<Sorry Your Are Not A Valid Person !!!>");
	    out.println("<br>");
	   out.println("<Please Try Again !!!!!!>");
	   out.println("<br>");
	   out.println("<A HREF='/clientlogin13.html'> Please Click Here To Login Again </A>");
	   out.println("</body>");
	   out.println("</html>"); 
	}
	out.println("</body>");
	out.println("</html>");
	}
	catch(Exception e)
	{
	  out.println("Error in.....");
	}
  }
}
