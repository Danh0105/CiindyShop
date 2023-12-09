<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Product extends Model
{
    public $table = 'products';

    protected $fillable = [
        'id',
        'pro_name',
        'pro_slug',
        'pro_price',
        'pro_price_entry',
        'pro_category_id',
        'pro_admin_id',
        'pro_sale',
        'pro_avatar',
        'pro_view',
        'pro_hot',
        'pro_active',
        'pro_pay',
        'pro_description',
        'pro_content',
        'pro_review_total',
        'pro_review_star',
        'pro_age_review',
        'pro_number',
        'pro_country'
    ];
    protected $guarded = [''];

    public function getCountry()
    {
        return Arr::get($this->country, $this->pro_country, "[N\A]");
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'pro_category_id');
    }

    public function keywords()
    {
        return $this->belongsToMany(Keyword::class, 'products_keywords', 'pk_product_id', 'pk_keyword_id');
    }

    public function attributes()
    {
        return $this->belongsToMany(Attribute::class, 'products_attributes', 'pa_product_id', 'pa_attribute_id');
    }

    public function favourite()
    {
        return $this->belongsToMany(User::class, 'user_favourite', 'uf_product_id', 'uf_user_id');
    }

    public function producer(): HasOne
    {
        return $this->hasOne(Producer::class, 'id', 'pro_country');
    }
}
