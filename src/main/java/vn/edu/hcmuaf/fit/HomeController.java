package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.*;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/HomeController")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<AllProduct> proSales = AllProductDAO.getInstance().getProSale();
//


            List<AllProduct> proTivis = AllProductDAO.getInstance().getProTivi();

            List<AllProduct> proLoas = AllProductDAO.getInstance().getProLoa();



        List<AllProduct> proMayLanhs = AllProductDAO.getInstance().getProMayLanh();

        List<AllProduct>proTuLanhs = AllProductDAO.getInstance().getProTuLanh();

        List<AllProduct> proTuDongs = AllProductDAO.getInstance().getProTuDong();


//
        List<AllProduct> proOnAps = AllProductDAO.getInstance().getProOnAp();

       List<AllProduct> proMayLocNuocs = AllProductDAO.getInstance().getProMayLocNuoc();
//
//        List<AllProduct> proLoiLocs = AllProductDAO.getInstance().getProLoiLoc();
//
//        List<AllProduct> proLocNuocs = AllProductDAO.getInstance().getProLocNuoc();
//
//        List<AllProduct> proNongLanhs = AllProductDAO.getInstance().getProNongLanh();
//
//        List<AllProduct> proXeDaps = AllProductDAO.getInstance().getProXeDap();
//
//        List<AllProduct> proXDDiaHinhs = AllProductDAO.getInstance().getProXDDiaHinh();
//
        List<AllProduct> proZones = AllProductDAO.getInstance().getProXeDap();
//
//        List<AllProduct> proPhuKienXDs = AllProductDAO.getInstance().getProPhuKienXD();
//
        List<AllProduct> proGiaDinhs = AllProductDAO.getInstance().getProGiaDinh();

        List<AllProduct> proGiaDungs = AllProductDAO.getInstance().getProGiaDung();


//
        List<AllProduct> proDienThoais = AllProductDAO.getInstance().getProDienThoai();

        List<AllProduct> proLaptops = AllProductDAO.getInstance().getProLaptop();

        List<AllProduct> proTablets = AllProductDAO.getInstance().getProTablet();

        List<AllProduct> proTaiNghes = AllProductDAO.getInstance().getProTaiNghe();
//
//        List<AllProduct> proPins = AllProductDAO.getInstance().getProPin();
//
//        List<AllProduct> proSacs = AllProductDAO.getInstance().getProSac();
//
//        List<AllProduct> proDHThongMinhs = AllProductDAO.getInstance().getProDHThongMinh();
//
        List<AllProduct> proDHNams = AllProductDAO.getInstance().getProDHNam();

        List<AllProduct> proDHNus = AllProductDAO.getInstance().getProDHNu();
//
//        List<AllProduct> proDHTreEms = AllProductDAO.getInstance().getProDHTreEm();

        List<Category> categories = CategoryDAO.getInstance().getAll();
        request.setAttribute("category", categories);
        request.setAttribute("proSale", proSales);


        request.setAttribute("proTivi", proTivis);
        request.setAttribute("proLoa", proLoas);

        request.setAttribute("proMayLanh", proMayLanhs);
        request.setAttribute("proTuLanh", proTuLanhs);
        request.setAttribute("proTuDong", proTuDongs);


        request.setAttribute("proOnAp", proOnAps);
//        request.setAttribute("proMayBom", proMayBoms);
//        request.setAttribute("proMayKhoan", proMayKhoans);
//        request.setAttribute("proSuaChua", proSuaChuas);
//
//
        request.setAttribute("proMayLocNuoc", proMayLocNuocs);
//        request.setAttribute("proLocNuoc", proLocNuocs);
//        request.setAttribute("proLoiLoc", proLoiLocs);
//        request.setAttribute("proNongLanh", proNongLanhs);
//        request.setAttribute("proXeDap", proXeDaps);
//
//        request.setAttribute("proXeDapDiaHinh", proXDDiaHinhs);
        request.setAttribute("proZone", proZones);
//        request.setAttribute("proPhuKienXD", proPhuKienXDs);
        request.setAttribute("proGiaDinh", proGiaDinhs);
        request.setAttribute("proGiaDung", proGiaDungs);
//
        request.setAttribute("proDienThoai", proDienThoais);
        request.setAttribute("proLaptop", proLaptops);
        request.setAttribute("proTablet", proTablets);
        request.setAttribute("proTaiNghe", proTaiNghes);
//        request.setAttribute("proPin", proPins);
//
//        request.setAttribute("proSac", proSacs);
//        request.setAttribute("proDHThongMinh", proDHThongMinhs);
        request.setAttribute("proDHNam", proDHNams);
        request.setAttribute("proDHNu", proDHNus);





        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
