/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.ShoppingCart;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CategoryFacade;
import session.ProductFacade;

/**
 *
 * @author Franz Mathauser
 */
@WebServlet(name = "ControllerServlet", loadOnStartup = 1, urlPatterns = {"/category",
    "/addToCart",
    "/viewCart",
    "/updateCart",
    "/checkout",
    "/purchase",
    "/chooseLanguage"})
public class ControllerServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    @EJB
    private CategoryFacade categoryFacade;

    @EJB
    private ProductFacade productFacade;

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("categories", categoryFacade.findAll());
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userPath = request.getServletPath();
        Category selectedCategory;
        Collection<Product> categoryProducts;

        // if category page is requested
        if (userPath.equals("/category")) {
            String categoryId = request.getQueryString();
            if(categoryId != null){
                 selectedCategory = categoryFacade.find(Short.parseShort(categoryId));
                 request.getSession().setAttribute("selectedCategory", selectedCategory);
                 categoryProducts = selectedCategory.getProductCollection();
                 request.getSession().setAttribute("categoryProducts", categoryProducts);
            }
           
            //categoryProducts
            // if cart page is requested
        } else if (userPath.equals("/viewCart")) {
            // TODO: Implement cart page request

            userPath = "/cart";

            // if checkout page is requested
        } else if (userPath.equals("/checkout")) {
            // TODO: Implement checkout page request
            // if user switches language
        } else if (userPath.equals("/chooseLanguage")) {
            // TODO: Implement language request
        }

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        
        // if addToCart action is called
        if (userPath.equals("/addToCart")) {
            if(cart == null){
                cart = new ShoppingCart();
                session.setAttribute("cart", cart);
            }

            String productId = request.getParameter("productId");

            
            if(!productId.isEmpty()){
              Product product = productFacade.find(Integer.parseInt(productId));
              cart.addItem(product);
            }

            userPath="/category";
            

            // if updateCart action is called
        } else if (userPath.equals("/updateCart")) {
            // TODO: Implement update cart action
            // if purchase action is called
        } else if (userPath.equals("/purchase")) {
            // TODO: Implement purchase action

            userPath = "/confirmation";
        }

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
