import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
public class addconf extends HttpServlet
{
  public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		 res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String[] str=req.getParameterValues("Empname");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Server: Conference list </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form>");
		out.println("<br>");
		out.println("<br>");
		out.println("<h1> <center>List Of Conferencing Persons </center> </h1>" );
		out.println("<br>");
		out.println("<br>");
		out.println("<table border=0>");
		out.println("<tr valign=center>");
    	out.println("<td align=center>");
	   out.println("Emp names");
    	out.println("</td> ");
	    out.println("<td align=center>");
	    out.println("<select name=Empname multiple>");
		for(int i=0;i<str.length;i++)
		{
	    out.println("<option value="+str[i]+">");
		out.println(str[i]);
		out.println("</option>");
		}
		out.println("</select>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
}
}