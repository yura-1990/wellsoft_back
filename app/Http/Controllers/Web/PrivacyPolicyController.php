<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\PrivacyPolicy;
use App\Models\TermCondition;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class PrivacyPolicyController extends Controller
{
    public function privacy(Request $request): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $privacies = PrivacyPolicy::query()->with(['privacyPolicyItems', 'webMenu'])->get();

        return view('pages.privacy', compact('privacies'));
    }
}
