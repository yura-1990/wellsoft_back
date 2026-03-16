<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Partner;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Team;
use App\Models\WebMenu;
use App\Models\Contact;
use App\Models\ContactInfo;
use App\Models\AboutUs;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class WebMenuController extends Controller
{
    public function index(): Factory|Application|View|\Illuminate\Contracts\Foundation\Application
    {
        $services = Service::query()->with(['serviceItems'])->get();
        $aboutUs = AboutUs::query()->with(['aboutItems.aboutUsItemChildren'])->get();
        $portfolios = Portfolio::query()->with(['portfolioItems.children'])->get();
        $teams = Team::query()->with(['teamMembers'])->get();
        $blogs = Blog::query()->with(['blogItems.services'])->get();
        $contacts = Contact::query()->get();
        $contactInfos = ContactInfo::query()->whereNull('parent_id')->with('children')->get();
        $partners = Partner::query()->with(['partnerInfo'])->where('type', 'clients')->get();

        return view('welcome', compact(
            'services',  'aboutUs', 'portfolios', 'partners',
            'teams', 'blogs', 'contacts', 'contactInfos'
        ));
    }
}
