{{-- {{ dd($listings) }} --}}
<x-layout>
    @include('partials._search')



    <x-card class="p-10 rounded">
        <header>
            <h1 class="text-3xl text-center font-bold my-6 uppercase">
                Manage Your Gigs
            </h1>
        </header>

        <table class="w-full table-auto rounded-sm">
            <tbody>
                @unless ($listings->isEmpty())
                    @foreach ($listings as $listing)
                        <x-manageListing-card :listing="$listing" />
                    @endforeach
                @else
                    <tr>
                        <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                            No listings to show
                        </td>
                    </tr>
                @endunless

            </tbody>
        </table>
    </x-card>

</x-layout>
