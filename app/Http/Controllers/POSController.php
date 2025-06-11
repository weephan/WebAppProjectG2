<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class POSController extends Controller
{
public function index()
{
    return view('POS');
}

public function addToCart(Request $request)
{
    $cart = session()->get('cart', []);
    $cart[] = [
        'id' => $request->item_id,
        'name' => $request->name,
        'price' => $request->price,
        'quantity' => $request->quantity,
        'type' => $request->type,
    ];
    session(['cart' => $cart]);

    return redirect()->route('POS');
}

public function removeFromCart($index)
{
    $cart = session()->get('cart', []);
    if (isset($cart[$index])) {
        unset($cart[$index]);
        session(['cart' => array_values($cart)]);
    }
    return redirect()->route('cart.remove');
}

public function emptyCart()
{
    session()->forget('cart');
    return redirect()->route('cart.clear');
}

public function checkout()
{
    return view('checkout');
}

public function processCheckout(Request $request)
{
    $cart = session('cart', []);
    $paymentMethod = $request->input('payment_method');

    if (empty($cart)) {
        return redirect()->route('checkout')->with('error', 'Cart is empty.');
    }

    $order = [
        'payment_method' => $paymentMethod,
        'items' => $cart,
        'status' => 'Preparing' // Default status
    ];

    session(['order' => $order]);
    session()->forget('cart'); // clear the cart after saving order

    return redirect()->route('receipt');
}

public function receipt()
{
    return view('receipt');
}

}
