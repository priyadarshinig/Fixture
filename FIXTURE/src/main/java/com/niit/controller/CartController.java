package com.niit.controller;

import java.util.List;
 
import javax.servlet.http.HttpSession;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.modaldao.Cartdao;
import com.niit.modaldao.Productdao;
import com.niit.modaldto.Cart;
import com.niit.modaldto.Product;
import com.niit.modaldto.User;

 
@Controller
public class CartController 
{
    @Autowired
    Cartdao cartdao;
     
    @Autowired
    Productdao productdao;
     
    @RequestMapping(value="ShowCart")
    public String showCartPage(Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
        return "Cart";
    }
     
    @RequestMapping(value="/addToCart/{prodid}")
    public String addToCart(@PathVariable("prodid")int prodid,@RequestParam("quantity") int qty,HttpSession session,Model m)
    {
    	System.out.println("entered the cart controller");
        String username=(String)session.getAttribute("username");
        Cart mycart=new Cart();
         
        Product product=productdao.getProduct(prodid);
        int price=product.getProdprice();
         
        mycart.setProdid(prodid);
        mycart.setQuantity(qty);
        mycart.setStatus("NP");
        mycart.setUsername(username);
        mycart.setCartid("C1001");
        mycart.setSubtotal(qty*price);
         
        cartdao.addtoCart(mycart);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
         
        return "Cart";
    }
     
    @RequestMapping(value="deleteCartItem/{cid}")
    public String deleteCartItem(@PathVariable("cid") int cid,Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
         
        cartdao.deleteCartItem(cid);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
        return "Cart";
    }
     
    @RequestMapping(value="updateCartItem/{cid}")
    public String updateCartItem(@PathVariable("cid")int cid,@RequestParam("qty")int qty,Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
         
        Cart cartitem=cartdao.getCartItem(cid);
         
        Product product=productdao.getProduct(cartitem.getProdid());
        int price=product.getProdprice();
         
        cartitem.setQuantity(qty);
        cartitem.setSubtotal(qty*price);
         
        cartdao.updateCart(cartitem);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
         
        return "Cart";
         
    }
    
    @RequestMapping("/checkout")
  	public String checkout()
  	{
  		return "Payment";
  	}    
   
     
}
