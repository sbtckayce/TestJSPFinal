package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.Product;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DienLanhDetail", value = "/dienlanhdetail")
public class DienLanhDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String dlid = request.getParameter("dlid");
//        Product detailProductDienLanhs = ProductDAO.getInstance().detailProductDienLanhByID(dlid);
//        request.setAttribute("detail",detailProductDienLanhs);
//        List<Category> categories = CategoryDAO.getInstance().getAll();
//        request.setAttribute("category",categories);
//        request.getRequestDispatcher("detail.jsp").forward(request,response);
    }
}
