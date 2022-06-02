package com.geekbrains.geekmarketwinter.controllers;

import com.geekbrains.geekmarketwinter.entites.CartPriceWS;
import com.geekbrains.geekmarketwinter.entites.Message;
import com.geekbrains.geekmarketwinter.services.ShoppingCartService;
import com.geekbrains.geekmarketwinter.utils.ShoppingCart;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;

@Controller
public class WebSocketController {

    private ShoppingCartService shoppingCartService;

    @MessageMapping("/mes")
    @SendTo("/topic/cartPrice")
    public CartPriceWS cartPriceWS(Message message, HttpSession httpSession) throws Exception {
        System.out.println("test - " + message);
        ShoppingCart cart = shoppingCartService.getCurrentCart(httpSession);
        return new CartPriceWS("Итого сумма в корзине: " + cart.getTotalCost());
    }
}
