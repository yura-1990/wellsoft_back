<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class ContactInfo extends Model
{
    use HasFactory, Translatable;

    protected array $translatable = ['type'];
    protected $guarded = ['id'];

    public function child()
    {
        return $this->hasMany(ContactInfo::class, 'parent_id', 'id');
    }

    public function children()
    {
        return $this->child()->with('children');
    }
}
