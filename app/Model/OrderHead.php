<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class OrderHead extends Model
{
    protected $table = "order_head";
    public $timestamps = false;

	/* Relations */

    public function detail()
    {
      return $this->hasMany('App\Model\OrderDetail');
    }

   	public function date_and_time(){
   		return gmdate('Y-m-d H:i:s',time()+25200);
   	}

    public function get_order_list(){
       $data = DB::select(
            'SELECT oh.*, 
                    od.start_date, od.start_date, od.end_date, od.country_name, od.days, od.selling_unit_price, od.selling_amount, od.estimated_cost, od.status,
                    ov.username, ov.id AS event_id
                FROM order_head oh 
                LEFT JOIN order_detail od ON oh.order_id = od.order_id
                LEFT JOIN order_event ov ON oh.order_id = ov.order_id');
      return $data;
    }

   	public function date_only(){
   		return gmdate('Y-m-d');
   	}

   	public function order_id(){
   		$data = OrderHead::orderBy('order_id', 'desc')->first();
   		if(empty($data)){
   			return "WB500001";
   		}else{
   			$id = $data->order_id;
   			$new = substr($id, 2);
   			$new += 1;
   			return "WB".$new;
   		}
   	}
}
