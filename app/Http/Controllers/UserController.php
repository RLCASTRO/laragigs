<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    //show register/create form
    public function create() {
        return view('users.register');
    }

    //Create new User 
    public function store(Request $request) {
        $formFields = $request->validate([
            'name' => ['required', 'min:3'],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|confirmed|min:6',
        ]);

        //Hash password
        $formFields['password'] = bcrypt($formFields['password']);

        //Create user
        $user = User::create($formFields);


        //Login
        auth()->login($user);

        //redirect user
        return redirect('/')->with('message', 'User created and logged in');


        // dd($formFields);
    }

    public function logout(Request $request) {
        //removes te session storage for the current user
        auth()-> logout();

        //recommended security  steps for securelly logs the user out
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'you have been logged out');

    }

    //Show Login Form
    public function login() {
        return view('users.login');
    }


    public function authenticate(Request $request) {
        //validation
        $formFields = $request->validate([
            'email' => ['required', 'email'],
            'password' => 'required',
        ]);

        if (auth()->attempt($formFields)) {
            $request->session()->regenerate();

            return redirect('/')->with('message', 'You are new logged in');
        }

        return back()->withErrors(['email' => 'Invalid Credentials'])->onlyInput('email');
    }

}
