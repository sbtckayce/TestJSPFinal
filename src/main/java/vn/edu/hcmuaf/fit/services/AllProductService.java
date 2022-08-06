package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Product;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import java.util.List;

public class AllProductService {
    private static AllProductService instance;


    public static AllProductService getIntance() {
        if (instance == null) {
            instance = new AllProductService();

        }
        return instance;
    }

    private AllProductService() {

    }
    public List<AllProduct> getAll(){

        return AllProductDAO.getInstance().getAll();
    }
    public AllProduct getPrById(int id){
        return AllProductDAO.getInstance().getPrById(id);
    }
}
