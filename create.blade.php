@extends('master.layout')
@section('head')
    <base href="{{ url('/') }}/">
@endsection
@section('content')
<div class="container py-5">
    <h2 class="mb-4">Add New Item</h2>
    <form action="{{ route('inventory.store') }}" method="POST">
        @csrf
        @include('inventory.form')
        <button type="submit" class="btn btn-success">Save</button>
        <a href="{{ route('inventory.index') }}" class="btn btn-secondary">Back</a>
    </form>
</div>
@endsection
