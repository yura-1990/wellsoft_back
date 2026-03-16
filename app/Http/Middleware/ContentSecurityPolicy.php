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

        // Allow Google Analytics, Google domains, and other required domains
        $response->headers->set('Content-Security-Policy', "
            default-src 'self';
            script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.google-analytics.com https://accounts.google.com https://www.googletagmanager.com;
            style-src 'self' 'unsafe-inline';
            img-src 'self' data: https://www.google-analytics.com;
            connect-src 'self' https://www.google-analytics.com https://accounts.google.com;
            font-src 'self';
            frame-src https://accounts.google.com;
            upgrade-insecure-requests;
        ");

        return $response;
    }
}
