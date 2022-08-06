package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.bean.Category;
import vn.edu.hcmuaf.fit.db.JDBIConnect;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDAO {
    private static CategoryDAO instance;

    public static CategoryDAO getInstance() {
        if(instance==null){
            instance=new CategoryDAO();
        }
        return instance;
    }
    public CategoryDAO(){

    }
   public List<Category> getAll(){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM category").mapToBean(Category.class).stream().collect(Collectors.toList());
        });
   }
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Category>list =c.getAll();
        for(Category i :list){
            System.out.println(i);
        }
    }
}
