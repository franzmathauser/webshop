/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package cart;

import entity.Product;

/**
 *
 * @author Franz Mathauser
 * @version $Id$
 */
public class ShoppingCartItem {

    Product product;
    int quantity;

    public ShoppingCartItem(Product product) {
        this.product = product;
        this.quantity = 1;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void incrementQuantity() {
        quantity++;
    }

    public double getTotal(){
        double amount = 0;
        amount = (quantity * product.getPrice().doubleValue());
        return amount;
    }


}
