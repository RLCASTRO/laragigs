@extends('layout')

@section('content')
<h2>
    {{ $listing['title'] . ' id:' . $listing['id'] }}
</h2>
<p>
    {{ $listing['description'] }}
</p>

@endsection
