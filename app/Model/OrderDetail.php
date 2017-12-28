<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $table = "order_detail";
    public $timestamps = false;

    public function head()
    {
        return $this->belongsTo('App\Model\OrderHead');
    }
}
