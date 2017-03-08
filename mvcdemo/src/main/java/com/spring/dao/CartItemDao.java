package com.spring.dao;

import com.spring.model.Cart;
import com.spring.model.CartItem;

public interface CartItemDao {
void addCartItem(CartItem cartItem);

CartItem getCartItem(int CartItemId);

void removeCartItem(CartItem cartItem);

void removeAllCartItems(Cart cart);

}
