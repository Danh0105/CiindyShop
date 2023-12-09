<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $guarded = [''];

    public function menu()
    {
        return $this->belongsTo(Menu::class, 'a_menu_id');
    }
    public $table = 'articles';

    protected $fillable = [
        'id',
        'a_name',
        'a_slug',
        'a_hot',
        'a_active',
        'a_menu_id',
        'a_view',
        'a_description',
        'a_avatar',
        'a_content',
        'a_position_2',
        'a_position_1'
    ];
}
