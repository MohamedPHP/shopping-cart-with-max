<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Product;
use App\Order;
use App\Cart;
use Session;
use Stripe\Charge;
use Auth;
use Stripe\Stripe;

class ProductsController extends Controller
{
    public function getIndex()
    {
        $products = Product::all();
        return view('shop.index', ['products' => $products]);
    }

    public function getAddToCart(Request $request, $id)
    {
        $product = Product::find($id);

        $oldcart = Session::has('cart') ? Session::get('cart') : null;

        $cart = new Cart($oldcart);

        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);

        return redirect()->route('product.index');

    }

    public function getReduceByOne($id)
    {
        $oldcart = Session::has('cart') ? Session::get('cart') : null;

        $cart = new Cart($oldcart);

        $cart->reduceByOne($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        }else {
            Session::forget('cart');
        }

        return redirect()->route('product.shoppingCart');

    }

    public function getRemoveItem($id)
    {
        $oldcart = Session::has('cart') ? Session::get('cart') : null;

        $cart = new Cart($oldcart);

        $cart->removeItem($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        }else {
            Session::forget('cart');
        }



        return redirect()->route('product.shoppingCart');
    }

    public function getCart()
    {
        if (!Session::has('cart')) {
            return view('shop.shopping-cart');
        }
        $oldcart = Session::get('cart');
        $cart = new Cart($oldcart);
        return view('shop.shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    public function getCheckout()
    {
        if (!Session::has('cart')) {
            return view('shop.shopping-cart');
        }
        $oldcart = Session::get('cart');
        $cart = new Cart($oldcart);
        $total = $cart->totalPrice;
        return view('shop.checkout', ['total' => $total]);
    }

    public function postCheckout(Request $request)
    {
        if (!Session::has('cart'))
        {
            return redirect()->route('product.shoppingCart');
        }
        $oldcart = Session::get('cart');

        $cart = new Cart($oldcart);

        Stripe::setApiKey('sk_test_yXYHggSfEtvr1BAx10ri84dk');

        try
        {
            $charge = Charge::create(array(
                "amount" => $cart->totalPrice * 100,
                "currency" => "usd",
                "source" => $request->input('stripeToken'), // obtained with Stripe.js
                "description" => "Test Charge"
            ));
            // insert into orders table
            $order = new Order();
            $order->cart = serialize($cart);
            $order->address = $request->input('address');
            $order->name = $request->input('name');
            $order->payment_id = $charge->id;
            Auth::user()->orders()->save($order);
        }
        catch (Exception $e)
        {
            return redirect()->route('checkout')->with('error', $e->getMessage());
        }
        Session::forget('cart');

        return redirect()->route('product.index')->with('success', 'Seccessfully Purchased Products!! :)');
    }

}
