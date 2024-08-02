<?php

namespace App\Http\Controllers;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    function index(Request $request)
    {
        $contacts = Contact::when($request->email, function ($query, $email) {
            $query->where('email', $email);
        })->OrderBy('created_at', 'desc')->get();
        return view('index', compact('contacts'));
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
            $contact=new Contact();
            $contact->name=$request->input('name');
            $contact->email=$request->input('email');
            $contact->phone=$request->input('phone');
            $contact->address=$request->input('address');
            $contact->save();
        return redirect('/contacts');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $contact=Contact::findOrFail( $id);
        return view('show',compact('contact'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        $contact=Contact::findOrFail( $id);
        return view('edit',compact('contact'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

        Contact::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address
        ]);

        return redirect('/contacts');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        Contact::findOrFail($id)->delete();
        return redirect('/contacts');
    }
}
