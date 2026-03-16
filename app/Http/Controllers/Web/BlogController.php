<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogItem;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function blog(Request $request): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $blogs = Blog::query()->with(['blogItems.services', 'webMenu'])->get();

        return view('pages.blog', compact('blogs'));
    }

    public function blogItem(Request $request, BlogItem $blogItem): View|Application|Factory|\Illuminate\Contracts\Foundation\Application
    {
        $blogItem = $blogItem->load(['services', 'blog.webMenu']);

        return view('pages.blog_details', compact('blogItem'));
    }
}
