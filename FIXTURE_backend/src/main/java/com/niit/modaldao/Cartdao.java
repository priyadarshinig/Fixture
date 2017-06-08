package com.niit.modaldao;

import java.util.List;

import com.niit.modaldto.Cart;

public interface Cartdao {
	public void addtoCart(Cart cart);
    public void deleteCartItem(int cid);
    public Cart getCartItem(int cid);
    public void updateCart(Cart cart);
    public List<Cart> getCartItems(String username);

}
