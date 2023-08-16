<x-layout>

    @include('partials._hero')
    @include('partials._search')
    {{-- this came from the laragigs-theme html file --}}

    <div class="lg:grid lg:grid-cols-2 gap-4 space-y-4 md:space-y-0 mx-4">

        @if (count($listings) == 0)
            <h3> No listings found</h3>
        @endif
        @foreach ($listings as $listing)
            {{-- this is passing the $listing props to the listing-card blade --}}
            <x-listing-card :listing="$listing" />
        @endforeach

    </div>
</x-layout>
