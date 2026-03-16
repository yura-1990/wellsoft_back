<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Contact extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['title', 'subtitle', 'description'];
    protected $guarded = ['id'];

    public function webMenu()
    {
        return $this->belongsTo(WebMenu::class, 'web_menu_id', 'id');
    }
}
