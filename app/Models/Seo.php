<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seo extends Model
{
    use HasFactory;

    protected $fillable = [
        'url_path',
        'locale',
        'title',
        'description',
        'keywords',
        'image',
        'json_ld',
        'canonical_url'
    ];
}
