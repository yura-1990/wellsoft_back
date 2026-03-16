<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function services(Request $request)
    {
        $services = Service::query()->with(['serviceItems', 'webMenu'])->get();

        return view('pages.services', compact('services'));
    }
}
