<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    //show all listings
    // public function index(Request $request) //you could also do this
    public function index()
    {
        // dd(request()->tag);
        return view('listings.index', [
            //this data usually comes from a database.
            'heading' => 'Latest Listings',
            // 'listings' => Listing::all() 
            'listings' => Listing::latest()->filter(request(['tag', 'search']))->get() //this does the same as the all(), but sorted and filtered by the request array
        ]);
    }

    //show single listing
    public function show(Listing $listing)
    {
        return view('listings.show', [
            'listing' => $listing
        ]);
    }

    //display the create listings form
    public function create() {
        return view('listings.create');
    }

    //store listing data
    public function store(Request $request) {
        // dd($request->all());
        $formFields = $request->validate([
            'title' => 'required',
            'company' => ['required'],
            'location' => 'required',
            'website' => 'required',
            'email' => ['required', 'email'],
            'tags' => 'required',
            'description' => 'required'
        ]);

        Listing::create($formFields);

        return redirect('/');
        
    }
}


