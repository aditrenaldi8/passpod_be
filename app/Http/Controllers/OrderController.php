<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

use App\Model\OrderHead;
use App\Model\OrderDetail;
use App\Model\OrderDetailCountry;
use App\Model\OrderEvent;
use App\Model\OrderAsset;
use App\Model\Country;
use App\Model\Parameter;

use CheckValue;

class OrderController extends Controller
{
    public function index(){
        $order = new OrderHead;
        $data = $order->get_order_list();

    	return view('app.list_order',['data'=> $data]);
    }

    public function detail($id){
        $data = OrderHead::find($id);
        $value = CheckValue::checkvalue($data);
        $total_rental = 0;

        if($value){
            $data2 = OrderDetail::where('order_id', $data->id)->get();
            foreach ($data2 as $value) {
                $total_rental += $value['selling_amount'];
            }
            $total_rental .= ".00";
            return view('app.detail_order',['data'=> $data, 'data2' => $data2, 'total_rent' => $total_rental]);
        }else{
            return view('app.404');
        }
    }

    public function insert(){
    	return view('app.insert_order');
    }

    public function create(Request $request){
    	$data = new OrderHead();
        $data->order_source = $request->input('source');
        $data->know_from = $request->input('know_from');
        $data->order_priority = $request->input('priority');
        $data->order_quantity = $request->input('quantity');
        $data->payment_method = $request->input('payment_method');

        $data->customer_name = $request->input('customer_name');
        $data->contact_phone = $request->input('contact_phone');
        $data->contact_wa = $request->input('contact_wa');
        $data->email_address = $request->input('email');

        $data->delivery_address = $request->input('delivery_address');
        $data->delivery_kecamatan = $request->input('kecamatan');
        $data->delivery_kelurahan = $request->input('kelurahan');
        $data->delivery_city = $request->input('city');
        $data->delivery_province = $request->input('province');
        $data->delivery_zip = $request->input('zip');

        $data->bank_acc_name = $request->input('bank_acc_name');
        $data->bank_name = $request->input('bank_name');
        $data->bank_acc_no = $request->input('bank_acc_no');

        $data->agent_code = $request->input('agent_code');
        $data->order_note = $request->input('order_note');

        $data->order_id = $data->order_id();
        $data->order_date = $data->date_and_time();
        $data->deposit_amount = 500000 * $data->order_quantity;
        $data->admin_fee = 25000 * $data->order_quantity;
        $data->discount = 0;
        $data->order_status = "New";
        $data->save();

        $data_event = new OrderEvent();
        $data_event->order_id = $data->id;
        $data_event->event_name = "New Order";
        $data_event->event_date = $data->date_and_time();
        $data_event->username = Auth::user()->username;
        $data_event->save();

        return redirect('order/detail/'.$data->id);
    }

    public function showAddForm($id){
        $data = OrderHead::find($id);
        $lists = Country::all();
    	return view('app.add_form',['data'=> $data, 'country'=> $lists]);
    }

    public function add(Request $request){
        $country = Country::where('country_id',$request->input('country'))->first(); 
        $data_order = OrderHead::find($request->input('id'));
        $line = OrderDetail::where('order_id', $request->input('id'))->orderBy('order_line', 'desc')->first(); 
        $parameter = Parameter::first();

        $start_date = $request->input('start_date');
        $end_date = $request->input('end_date');

        $initial = 0;
        $data = new OrderDetail();
        $data->order_id = $request->input('id');
        $data->order_line =  $line->order_line + 1 + $initial ; 
        $data->country_name =  $country->country_name;
        $data->start_date = $start_date;
        $data->end_date = $end_date;

        $diff = date_diff(date_create($start_date),date_create($end_date));
        $day_count = $diff->format('%a');
        ($day_count < 0) ? $day_count = 0 : (int)$day_count +=1 ;

        $selling_price = explode('.', $country->selling_price );
        $cost = explode('.', $country->cost );
        $data->days = $day_count;
        $data->selling_unit_price = $selling_price[0];
        $data->selling_amount = $data_order->order_quantity * $selling_price[0] * $day_count;
        $data->estimated_cost = $data_order->order_quantity * $cost[0] * $parameter->value1 * $day_count;
        $data->status = "New";
        $data->save();

        $total_rental = 0;

        $data_order_detail = OrderDetail::where('order_id', $request->input('id'))->get();
        foreach($data_order_detail as $v){
            $total_rental += $v['selling_amount'];
        }

        $data_order->total_amount = $total_rental + $data_order->deposit_amount + $data_order->admin_fee - $data_order->discount;
        $data_order->save();

        return redirect('order/detail/'.$data_order->id);
    }
    
    public function approve(){

    }

    public function cancel(){

    }

    public function email($id){

        $user = 1;

        Mail::send('app.mail_order', ['user' => $user], function($mail) use($user) {
            $mail->SMTPOptions = array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
            );
            $mail->from('aditrenaldi8@gmail.com', 'Aditya Renaldi');
            $mail->to('adityarenaldi008@gmail.com', 'Aditya Renaldi');
        });
    }

    public function history($id){
        $data = OrderEvent::find($id);

        var_dump($data);die;
    }

}
