<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Portfolio;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    public function portfolio(): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $portfolios = Portfolio::query()->with(['portfolioItems.children', 'webMenu'])->get();

        return view('pages.portfolio', compact('portfolios'));
    }
}
