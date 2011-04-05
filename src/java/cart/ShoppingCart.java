/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package cart;

import entity.Product;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Franz Mathauser
 * @version $Id$
 */
public class ShoppingCart {

    List<ShoppingCartItem> items;
    int numberOfItems;
    int total;

    public ShoppingCart() {
        this.items = new ArrayList<ShoppingCartItem>();
        this.numberOfItems = 0;
        this.total = 0;
    }


    public synchronized void addItem(Product product) {
        boolean newItem = true;
        for(ShoppingCartItem item : items){
            if(item.getProduct().getId() == product.getId()){
                newItem = false;
                item.incrementQuantity();
            }
        }
        if(newItem){
            items.add(new ShoppingCartItem(product));
            numberOfItems++;
        }
    }

    
    
    
   public synchronized List<ShoppingCartItem> getItems() {
        return items;
    }

    public synchronized int getNumberOfItems() {
        return numberOfItems;
    }

    public synchronized int getTotal() {
        return total;
    }

    public double getSubtotal()
    {
        double total = 0;
        for(ShoppingCartItem item : items){
            total += item.getTotal();
        }
        return total;
    }

}
