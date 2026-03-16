<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Symfony\Component\HttpFoundation\Response;

class Localization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $languages = config('voyager.multilingual.locales');

        if(Session::has("locale")){
            App::setLocale(Session::get("locale"));
        } else {
            $browserLanguage = request()->getPreferredLanguage();
            $browserLanguage = substr($browserLanguage, 0, 2);

            if(!in_array($browserLanguage, $languages)){
                $browserLanguage = config('app.locale');
            }

            App::setLocale($browserLanguage);
            Session::put('locale', $browserLanguage);
        }


        return $next($request);
    }
}
