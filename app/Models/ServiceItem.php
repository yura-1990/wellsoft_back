<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class ServiceItem extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['title', 'description'];
    protected $guarded = ['id'];

    public function services()
    {
        return $this->belongsToMany(
            BlogItem::class, 'blog_item_service_items', 'service_item_id', 'blog_item_id'
        )->withPivot('title', 'description', 'image');
    }
}
