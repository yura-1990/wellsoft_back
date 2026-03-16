<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use TCG\Voyager\Traits\Translatable;

class Portfolio extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['title', 'subtitle', 'description'];
    protected $guarded = ['id'];

    public function webMenu(): BelongsTo
    {
        return $this->belongsTo(WebMenu::class, 'web_menu_id', 'id');
    }

    public function portfolioItems(): HasMany
    {
        return $this->hasMany(PortfolioItem::class)->where('parent_id', null);
    }
}
