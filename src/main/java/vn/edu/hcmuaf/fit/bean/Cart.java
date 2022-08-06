package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable {
//    private static final long serialVersionUID = 1;
    private static Cart instance;
    private Map<Integer, AllProduct> maps;

    private Cart() {
        maps = new HashMap<>();
    }

    public static Cart getInstance() {
        if (instance == null) {
            instance = new Cart();
        }
        return instance;
    }

    public AllProduct get(int id) {
        return maps.get(id);
    }

    public void put(AllProduct ap) {
        if (maps.containsKey(ap.getId())) {
            updateQuantity(ap.getId());
        } else {
            ap.setSellQuantity(1);

            maps.put(ap.getId(), ap);

        }

    }

//    public void remove(AllProduct ap) {
//        maps.remove(ap);
//    }
    public AllProduct remove(int id) {

    return maps.remove(id);
}
    public void updateQuantity(int id) {
        AllProduct al = maps.get(id);
        al.setSellQuantity(al.getSellQuantity() + 1);
    }

    public Collection<AllProduct> getMap() {

        return maps.values();
    }

    public double getTotalPrice() {
        double totalPrice = 0;
        for (AllProduct al : maps.values()) {
            totalPrice += al.getTotalMoney();
        }
        return totalPrice;

    }

    public int getTotalQuanTity() {
        int totalQuantity = 0;
        for (AllProduct al : maps.values()) {
            totalQuantity += al.getSellQuantity();
        }
        return totalQuantity;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "maps=" + maps +
                '}';
    }
    public AllProduct removeS(String s) {

        return maps.remove(s);
    }
    public int sizeCart(){
        return maps.size();
    }
    public void emptyMap(){
        maps.clear();
    }
    public static void main(String[] args) {
        Cart cart = new Cart();

        cart.put(new AllProduct(1,"tive","de1","co1","co2",10,8,10,10,"123","1","1",1,1,"t","1","2","3","4"));
        cart.put(new AllProduct(2,"loa","de1","co1","co2",10,8,10,10,"123","1","1",1,1,"t","1","2","3","4"));


        System.out.println(cart.toString());
        System.out.println( cart.sizeCart());
        cart.emptyMap();
        System.out.println( cart.sizeCart());
    }
}
