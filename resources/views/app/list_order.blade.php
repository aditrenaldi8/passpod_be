@extends('adminlte::page')

@section('title', 'Passpod - List Order')

@section('content_header')
    <h1>List Order</h1>
@stop

@section('content')
    <div class="box">
	    <div class="box-header">
	      <h3 class="box-title"></h3>
	    </div>
	    <!-- /.box-header -->
	    <div class="box-body" style="overflow-y:auto; overflow-x: scroll; ">
	      	<table class="table table-bordered table-striped" >
	        	<thead>
			        <tr>
			          <th>Detail</th>
			          <th>Usage</th>
			          <th>History</th>
			          <th>Cancel</th>
			          <th>Edit</th>
			          <th>Seq</th>
			          <th>Order Id</th>
			          <th>Order Date</th>
			          <th>Time</th>
			          <th>Start Date</th>
			          <th>Created By</th>
			          <th>Status</th>
			          <th>Source</th>
			          <th>Customer Name</th>
			          <th>Contact Phone</th>
			          <th>Contact WA</th>
			          <th>Email</th>
			          <th>Payment Method</th>
			          <th>Qty</th>
			          <th>Rental Fee</th>
			          <th>Deposit Amount</th>
			          <th>Admin Fee</th>
			          <th>Discount</th>
			          <th>Total Order</th>
			        </tr>
	       		</thead>
	        	<tbody>
	        		<?php $a = 0; ?>
	        		@foreach($data as $v)
	        			<?php $a++; ?>
				        <tr>
				          <td>
				          	<a href="{{url ('order/detail/'.$v->id) }}"><button class="btn btn-sm btn-info" title="detail"><span class="fa fa-eye"></span></button></a>
				          </td>
				          <td>
				          	<button class="btn btn-sm btn-warning" title="usage"><span class="fa fa-info"></span></button>
				          </td>
				          <td>
				          	<a href="{{url ('order/history/'.$v->event_id) }}"><button class="btn btn-sm btn-default" title="history"><span class="fa fa-info"></span></button></a>
				          </td>
				          <td>
				          	<button class="btn btn-sm btn-danger" title="cancel"><span class="fa fa-trash"></span></button>
				          </td>
				          <td>
				          	<button class="btn btn-sm btn-success" title="edit"><span class="fa fa-pencil"></span></button>
				          </td>
				          <td>{{ $a }}</td>
				          <td>{{ $v->order_id }}</td>
				          <td><?php echo date('d-m-Y', strtotime($v->order_date));?></td>
				          <td><?php echo date('H:i', strtotime($v->order_date));?></td>
				          <td>@if(isset($v->start_date)) <?php echo date('d-m-Y', strtotime($v->start_date));?> @endif</td>
				          <td>{{ $v->username }}</td>
				          <td>{{ $v->order_status }}</td>
				          <td>{{ $v->order_source }}</td>
				          <td>{{ $v->customer_name }}</td>
				          <td>{{ $v->contact_phone }}</td>
				          <td>{{ $v->contact_wa }}</td>
				          <td>{{ $v->email_address }}</td>
				          <td>{{ $v->payment_method }}</td>
				          <td>{{ $v->order_quantity }}</td>
				          <td>{{ $v->selling_amount }}</td>
				          <td>{{ $v->deposit_amount}}</td>
				          <td>{{ $v->admin_fee }}</td>
				          <td>{{ $v->discount }}</td>
				          <td>{{ $v->estimated_cost }}</td>
				        </tr>
			        @endforeach
			    </tbody>
			</table>
		</div>
	</div>    
@stop