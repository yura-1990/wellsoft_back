<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use TCG\Voyager\Traits\Translatable;

class AboutUsItem extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['title', 'subtitle', 'info'];
    protected $guarded = ['id'];

    public function aboutUsItemChildren(): HasMany
    {
        return $this->hasMany(AboutUsItemChildren::class, 'about_us_item_id', 'id');
    }
}
