<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Producer extends Model
{
    public $table   = 'producer';
    protected $guarded = ['id', 'pdr_name', 'pdr_slug', 'pdr_email', 'pdr_phone'];
    public function products(): hasMany
    {
        return $this->hasMany(Product::class, 'pro_country', 'id');
    }
}
