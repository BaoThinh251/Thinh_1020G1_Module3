import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet" ,urlPatterns = {"", "/index"})
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();

        customerList.add(new Customer("Elizabeth Olsen" , "16/02/1989" , "Los Angeles" ,
                "Olsen.jpg"));
        customerList.add(new Customer("Chris Evans" , "13/06/1981" , "Massachusetts",
                "/Evans.jfif"));
        customerList.add(new Customer("Tom Holland" , "01/06/1996" , "Kingston upon Thames",
                "/Holland.jpg"));
        customerList.add(new Customer("Benedict Cumberbatch" , "01/07/1991" , "London",
                "/Benedict.jfif"));
        customerList.add(new Customer("Tom Hiddleston" , "09/02/1981" , "London" ,
                "/Tom.jpg"));

        request.setAttribute("customerListFromServlet" , customerList);
        request.getRequestDispatcher("index.jsp").forward(request , response);


    }
}
