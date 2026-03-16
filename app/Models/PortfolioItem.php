<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use TCG\Voyager\Traits\Translatable;

class PortfolioItem extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['name', 'type', 'description'];
    protected $fillable = ['name', 'type', 'description', 'url', 'photo', 'portfolio_id', 'parent_id'];

    public function children(): HasMany
    {
        return $this->hasMany(PortfolioItem::class, 'parent_id', 'id');
    }
}
