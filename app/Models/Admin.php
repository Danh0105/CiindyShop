<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Admin extends Authenticatable
{
    use Notifiable;
    public $table = 'admins';

    protected $fillable = [
        'id',
        'name',
        'email',
        'password',
        'phone',
        'log_login',
        'class',
        'address',
        'avatar'
    ];
}
