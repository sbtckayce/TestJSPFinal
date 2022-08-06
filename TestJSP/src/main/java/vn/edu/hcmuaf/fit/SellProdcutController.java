package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Category;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SellProdcutController", value = "/sellproduct")
public class SellProdcutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("userlogin");
        String sid = u.getIsSell();
        List<AllProduct> sellProducts = AllProductDAO.getInstance().sellProduct(sid);
        List<Category> categories = CategoryDAO.getInstance().getAll();
        request.setAttribute("category",categories);

        request.setAttribute("allpro",sellProducts);
        request.getRequestDispatcher("sellproduct.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
