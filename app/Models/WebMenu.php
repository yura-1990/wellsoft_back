<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use TCG\Voyager\Traits\Translatable;

class WebMenu extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['name'];
    protected $guarded = ['id'];

    public function child(): HasMany
    {
        return $this->hasMany(WebMenu::class, 'parent_id', 'id');
    }

    public function children(): HasMany
    {
        return $this->child()->with('children');
    }

    public function services(): HasMany
    {
        return $this->hasMany(Service::class, 'web_menu_id', 'id');
    }

    public function blogs(): HasMany
    {
        return $this->hasMany(Blog::class, 'web_menu_id', 'id');
    }



}
