package vn.edu.hcmuaf.fit.bean;


import java.io.Serializable;

public class Product implements Serializable {
    private String id;
    private String name;
    private String decription;
    private String compare1;
    private String compare2;

    private String oldPrice;
    private String newPrice;
    private String percent;
    private String quantity;
    private String img;
    private String text;

    public Product(String id, String name, String decription, String compare1, String compare2, String oldPrice, String newPrice, String percent, String quantity, String img, String text) {
        this.id = id;
        this.name = name;
        this.decription = decription;
        this.compare1 = compare1;
        this.compare2 = compare2;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
        this.percent = percent;
        this.quantity = quantity;
        this.img = img;
        this.text = text;
    }

    public Product(){

    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getCompare1() {
        return compare1;
    }

    public void setCompare1(String compare1) {
        this.compare1 = compare1;
    }

    public String getCompare2() {
        return compare2;
    }

    public void setCompare2(String compare2) {
        this.compare2 = compare2;
    }

    public String getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(String oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(String newPrice) {
        this.newPrice = newPrice;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return id + "," + name + "," + decription + "," + oldPrice + "," + newPrice + "," + quantity + "," + img;

    }
}
