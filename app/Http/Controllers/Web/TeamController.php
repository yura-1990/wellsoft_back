<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Team;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use App\Models\TeamMember;

class TeamController extends Controller
{
    public function team(Request $request): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $teams = Team::query()->with(['teamMembers', 'webMenu'])->get();

        return view('pages.team', compact('teams'));
    }

}
