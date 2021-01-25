import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", urlPatterns = "/cal")
public class CalculateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int price = Integer.parseInt(request.getParameter("price"));
        int percent = Integer.parseInt(request.getParameter("discount"));
        int calculate = (price * percent) / 100;
        int priceAfterCal = price - calculate;

        request.setAttribute("totalDiscount", calculate);
        request.setAttribute("priceAf", priceAfterCal);

        request.getRequestDispatcher("output.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
