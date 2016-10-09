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
        <div class="col-md-4 col-md-offset-4">
            <h1 class="text-center">Signup Page</h1>
            <form action="{{ route('user.signup') }}" method="post">
                <div class="form-group">
                  <label for="email">E-mail</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="E-mail">
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="password">
                </div>
                <button type="submit" class="btn btn-primary">Signup</button>
                {{ csrf_field() }}
            </form>
        </div>
    </div>
@endsection
