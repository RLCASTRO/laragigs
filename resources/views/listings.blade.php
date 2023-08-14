<h1>{{ $heading }}</h1>
<div>
    @if (count($listings) == 0)
        <h3> No listings found</h3>
    @endif
    @foreach ($listings as $listing)
        <h2>
            <a href="/listing/{{ $listing['id'] }}"> {{ $listing['title'] . ' id:' . $listing['id'] }} </a>
    </h2>
    <p>
        {{ $listing['description'] }}
    </p>
 @endforeach

</div>
