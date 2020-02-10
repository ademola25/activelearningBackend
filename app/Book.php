<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    /**
     * Create a many to many relationship between the books and
     * uers model so as to store a list of orers made by users
     */
    public function users()
    {
        return $this->belongsToMany('App\Book', 'book_user')->withTimestamps();
    }
}
