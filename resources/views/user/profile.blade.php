@extends('layouts.master')

@section('content')
    @if(count($errors) > 0)
        <div class="alert alert-danger">
            @foreach($errors->all() as $error)
                <p> {{ $error }} </p>
            @endforeach
        </div>
    @endif
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h1 class="text-center">Profile Page</h1>
            <hr>
            @foreach($orders as $order)
                <div class="panel panel-default">
                    <div class="panel-heading"><h3 class="panel-title">Your Orders</h3></div>
                    <div class="panel-body">
                        <ul class="list-group">
                            @foreach($order->cart->items as $item)
                                <li class="list-group-item">
                                    <span class="badge">{{ $item['price'] }} $</span>
                                    {{ $item['item']['title'] }} | {{ $item['qty'] }} Units
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="panel-footer">
                        Total Price: {{ $order->cart->totalPrice }} 
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
