package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Category;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllProductController", value = "/AllProductController")
public class AllProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        List<Category> categories = CategoryDAO.getInstance().getAll();
        List<AllProduct>allProducts = AllProductDAO.getInstance().getTop10();

        request.setAttribute("category",categories);
        request.setAttribute("allpro",allProducts);

        request.getRequestDispatcher("allproduct.jsp").forward(request,response);
    }
}
