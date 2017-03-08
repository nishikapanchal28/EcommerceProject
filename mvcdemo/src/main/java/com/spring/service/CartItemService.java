package com.spring.service;

import com.spring.model.Cart;
import com.spring.model.CartItem;

public interface CartItemService {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int CartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);
}
