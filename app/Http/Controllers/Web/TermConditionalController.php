<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Team;
use App\Models\TermCondition;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class TermConditionalController extends Controller
{
    public function terms(Request $request): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $terms = TermCondition::query()->with(['termConditionItems', 'webMenu'])->get();

        return view('pages.terms', compact('terms'));
    }
}
