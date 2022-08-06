package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.Cart;
import vn.edu.hcmuaf.fit.bean.Category;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartController", value = "/CartController")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            cart=Cart.getInstance();

        }

        request.setAttribute("cart",cart);
        session.setAttribute("cart",cart);
        List<Category> categories = CategoryDAO.getInstance().getAll();
        request.setAttribute("category",categories);
        request.getRequestDispatcher("cartproduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
