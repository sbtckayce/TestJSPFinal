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

@WebServlet(name = "SearchController", value = "/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String textsearch = request.getParameter("text-search");
        List<AllProduct> searchProducts = AllProductDAO.getInstance().searchProduct(textsearch);
        List<Category> categories = CategoryDAO.getInstance().getAll();
        request.setAttribute("allpro",searchProducts);
        request.setAttribute("category",categories);
        request.setAttribute("decripsearch",textsearch);
        request.getRequestDispatcher("allproduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
