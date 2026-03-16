<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use PhpParser\Node\Stmt\Block;
use TCG\Voyager\Traits\Translatable;

class BlogItem extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['title', 'description', 'blog_info'];
    protected $guarded = ['id'];

    public function services(): BelongsToMany
    {
        return $this->belongsToMany(
            ServiceItem::class, 'blog_item_service_items', 'blog_item_id', 'service_item_id'
        )->withPivot('title', 'description', 'image');
    }

    public function blog(): BelongsTo
    {
        return $this->belongsTo(Blog::class, 'blog_id', 'id');
    }
}
