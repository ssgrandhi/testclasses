import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*; 
import java.sql.*;
public class conferencescreen2 extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
   {
       doPost(req,res);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
	   	     res.setContentType("text/html");
			 PrintWriter out=res.getWriter();
			 Connection con;
			 Statement st;
			 ResultSet rs;
			 out.println("<html>");
			 out.println("<head>");
			 out.println("<title> Conferencing Screen </title>");
			 out.println("<script language='JavaScript'>");
			 out.println("function send1()");
			 out.println("{ f11.ta1.value=f11.t1.value }</script>");
			 out.println("</head>");
			 out.println("<body>");
			 out.println("<form name=f11>");
			 out.println("<br>");
			 out.println("<center>");
			 out.println("<h1> Conference Screen </h1>");
			 out.println("</center>");
			 out.println("<br>");
			 out.println("<center>");
			 out.println("<textarea rows=4 cols=4 value=aaaaa name=ta1>");
			 out.println("</textarea>");
			out.println("<select name=Empname multiple>");
	 		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:netConference");
			st=con.createStatement();
			rs=st.executeQuery("select * from necdata2");
		while(rs.next())
		{
			String str=rs.getString(1);
			out.println("<option value="+str+">");
			out.println(str);
			out.println("</option>");
		}
		}
		catch(Exception e)
		{out.println("Error in.....");
		}
		out.println("</select>");
			 out.println("<br>");
			 out.println("<br>");
			 out.println("<input type=text size=30 name=t1>");
			 out.println("<br>");
			 out.println("<br>");
			 out.println("<input type=button name=send value='  SEND  '  onClick='send1()'>");
	//		 out.println("<input type=button name=add value='   ADD   '>");
	//		 out.println("<input type=button name=close value=' CLOSE  '>");
			 out.println("</center>");
			 out.println("</form>");
			 out.println("</body>");
			 out.println("</html>");
}
}
