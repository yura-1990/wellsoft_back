<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\ContactClient;
use App\Models\ContactInfo;

class ContactController extends Controller
{
    public function contact(Request $request)
    {
        $contacts = Contact::query()
            ->with(['webMenu'])
            ->get();
        
        $contactInfos = ContactInfo::query()
            ->whereNull('parent_id')
            ->with('children')
            ->get();

        return view('pages.contact', [
            'contacts' => $contacts,
            'contactInfos' => $contactInfos
        ]);
    }

    public function contactClient(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'contact' => 'required|string',
            'message' => "nullable|string"
        ]);

        ContactClient::query()->create($request->all());

        return redirect()->back()->with('submittedSuccessfully');
    }
}
