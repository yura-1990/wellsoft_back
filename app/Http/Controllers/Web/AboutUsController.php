<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function aboutUs(Request $request): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $aboutUs = AboutUs::query()->with(['aboutItems.aboutUsItemChildren', 'webMenu'])->get();

        return view('pages.about', compact('aboutUs'));
    }
}
