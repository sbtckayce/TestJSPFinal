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

//        public static Cart getInstance(){
//            return new Cart();
//        }

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

    public void remove(AllProduct ap) {
        maps.remove(ap);
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

}
