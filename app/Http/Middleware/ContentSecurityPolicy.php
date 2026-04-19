<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ContentSecurityPolicy
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $response = $next($request);

        // Correctly formatted CSP header
        $cspHeader = "default-src 'self'; "
           . "script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.google-analytics.com https://accounts.google.com https://www.googletagmanager.com https://cdnjs.cloudflare.com https://apis.google.com; "
           . "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; "
           . "font-src 'self' https://fonts.gstatic.com; "
           . "img-src 'self' data: https://www.google-analytics.com; "
           . "connect-src 'self' https://www.google-analytics.com https://accounts.google.com; "
           . "frame-src https://accounts.google.com https://content.googleapis.com; "
           . "upgrade-insecure-requests;";
        $response->headers->set('Content-Security-Policy', $cspHeader);

        return $response;
    }
}
