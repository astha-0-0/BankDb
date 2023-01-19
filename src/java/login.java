
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



/**
 *
 * @author astha
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String n = request.getParameter("a");
        String p = request.getParameter("b");
        if (n.equals("astha")&& p.equals("astha"))
        {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        } else {
            out.print("<h3 style=\"color:red;background-color:white;text-align:center\">ERROR. Incorrect UserName/Pin!</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/index.html");
            rd.include(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}