<?php

namespace App\Providers;

use App\Models\Service;
use App\Models\WebMenu;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        $webMenu = WebMenu::query()
            ->whereNull('parent_id')
            ->with('children')
            ->orderBy('position')
            ->get();

        $languages = config('voyager.multilingual.locales');
        $services = Service::query()->with(['serviceItems'])->get();
        $menus = WebMenu::query()->get();


        View::composer('*', function ($view) use ($webMenu, $languages, $services, $menus) {
            $view->with([
                'webmenus' => $webMenu,
                'services' => $services,
                'languages' => $languages,
                'menus' => $menus,
            ]);
        });
    }
}
