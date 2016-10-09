@extends('layouts.master')

@section('title')
    shop
@endsection

@section('content')
        <div class="row">
            <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                <h1 class="text-center text-success">Checkout</h1>
                <h4 class="text-left text-primary">Your Total Is: {{ $total }}$</h4>
                <hr>
                <form action="{{ route('checkout') }}" method="post" id="checkout-form">
                    <div id="charge-error" class="alert alert-danger {{ !Session::has('error') ? 'hidden' : '' }}">
                        {{ Session::get('error') }}
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                          <label for="name">Name</label>
                          <input type="text" class="form-control" id="name" name="name" required="required">
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                          <label for="address">Address</label>
                          <input type="text" class="form-control" id="address" name="address" required="required">
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                          <label for="card-name">Card Holder Name</label>
                          <input type="text" class="form-control" id="card-name" name="card-name" required="required">
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                          <label for="card-number">Credit Card Number</label>
                          <input type="text" class="form-control" id="card-number" name="card-number" required="required">
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                          <label for="card-expiry-month">Expression Month</label>
                          <input type="text" class="form-control" id="card-expiry-month" name="card-expiry-month" required="required">
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                          <label for="card-expiry-year">Expression Year</label>
                          <input type="text" class="form-control" id="card-expiry-year" name="card-expiry-year" required="required">
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                          <label for="card-cvc">CVC</label>
                          <input type="text" class="form-control" id="card-cvc" name="card-cvc" required="required">
                        </div>
                    </div>
                    {{ csrf_field() }}
                    <div class="col-xs-12">
                        <div class="form-group">
                            <button type="submit" class="btn btn-success btn-block">Buy Now</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
@endsection

@section('scripts')
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
    <script src="{{asset('js/checkout.js')}}"></script>
@endsection
