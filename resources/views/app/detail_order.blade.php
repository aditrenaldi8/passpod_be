@extends('adminlte::page')

@section('title', 'Passpod - Detail Order')

@section('content_header')
    <h1>Detail Order</h1>
@stop

@section('content')
	<section class="content">
      	<div class="row">
	        <div class="col-md-12">
	        	 <div class="box box-warning">
			        <div class="box-header with-border">
			          	<h3 class="box-title">Order Info</h3>
			        </div>
				    <div class="box-body">
				       	<div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Order ID :</td>
				          			<td> {{ $data->order_id }} </td>
				          		</tr>
				          		<tr>
				          			<td>Status :</td>
				          			<td> {{ $data->order_status }} </td>
				          		</tr>
				          		<tr>
				          			<td>Quantity :</td>
				          			<td> {{ $data->order_quantity }} </td>
				          		</tr>
				          		<tr>
				          			<td>Payment Method :</td>
				          			<td> {{ $data->payment_method }} </td>
				          		</tr>
				          	</table>
				        </div>

				        <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Order Date :</td>
				          			<td> {{ $data->order_date }} </td>
				          		</tr>
				          		<tr>
				          			<td>Source :</td>
				          			<td> {{ $data->order_source }} </td>
				          		</tr>
				          		<tr>
				          			<td>Priority :</td>
				          			<td> {{ $data->order_priority }} </td>
				          		</tr>
				          		<tr>
				          			<td>Agent Code :</td>
				          			<td> {{ $data->agent_code }} </td>
				          		</tr>
				          	</table>
				        </div>
				    </div>
				</div>

			    <div class="box box-info">
			        <div class="box-header with-border">
			          	<h3 class="box-title">Customer Data</h3>
			        </div>
			        <div class="box-body">
			            <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Customer Name :</td>
				          			<td> {{ $data->customer_name }} </td>
				          		</tr>
				          		<tr>
				          			<td>Contact Phone :</td>
				          			<td> {{ $data->contact_phone }} </td>
				          		</tr>
				          	</table>
				        </div>

				        <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Customer Email :</td>
				          			<td> {{ $data->email_address }} </td>
				          		</tr>
				          		<tr>
				          			<td>Contact WhatsApp :</td>
				          			<td> {{ $data->contact_wa }} </td>
				          		</tr>
				          	</table>
				        </div>
			        </div>
			    </div>

			    <div class="box box-default">
			        <div class="box-header with-border">
			          	<h3 class="box-title">Delivery Data</h3>
			        </div>
			        <div class="box-body">
			            <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Delivery Address :</td>
				          			<td> {{ $data->delivery_address }} </td>
				          		</tr>
				          	</table>
				        </div>

				        <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Delivery Courier</td>
				          			<td> - </td>
				          		</tr>
				          		<tr>
				          			<td>Delivery Date :</td>
				          			<td> - </td>
				          		</tr>
				          		<tr>
				          			<td>Delivery Remarks :</td>
				          			<td> - </td>
				          		</tr>
				          	</table>
				        </div>
			        </div>
			    </div>

			    <div class="box box-success">
			        <div class="box-header with-border">
			          	<h3 class="box-title"> Refund Info & Other </h3>
			        </div>
			        <div class="box-body">
			            <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<th colspan="2"> Refund Info </th>
				          		</tr>
				          		<tr>
				          			<td>Bank :</td>
				          			<td> {{ $data->bank_name }} </td>
				          		</tr>
				          		<tr>
				          			<td>Account Number :</td>
				          			<td> {{ $data->bank_acc_no }} </td>
				          		</tr>
				          		<tr>
				          			<td>Account Name :</td>
				          			<td> {{ $data->bank_acc_name }} </td>
				          		</tr>
				          	</table>
				        </div>

				        <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<th colspan="2"> Other</th>
				          		</tr>
				          		<tr>
				          			<td>Note :</td>
				          			<td> </td>
				          		</tr>
				          		<tr>
				          			<td>Quantity Assigned :</td>
				          			<td> 1 </td>
				          		</tr>
				          		<tr>
				          			<td>Modem Assigned :</td>
				          			<td> -</td>
				          		</tr>
				          	</table>
				          	<br>
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Collect Courier :</td>
				          			<td> </td>
				          		</tr>
				          		<tr>
				          			<td>Collect Date :</td>
				          			<td> </td>
				          		</tr>
				          		<tr>
				          			<td>Collect Remarks :</td>
				          			<td> </td>
				          		</tr>
				          	</table>
				        </div>
			        </div>
			    </div>

			    <div class="box box-danger">
			        <div class="box-header with-border">
			          	<h3 class="box-title"> Total Amount & Country Detail </h3>
			        </div>
			        <div class="box-body">
			            <div class="col-md-6"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Rental Charge :</td>
				          			<td class="pull-right"> 
				          				@if(isset($data2)) {{ $total_rent }} @endif 
				          			</td>
				          		</tr>
				          		<tr>
				          			<td>Deposit Amount :</td>
				          			<td class="pull-right"> {{ $data->deposit_amount }} </td>
				          		</tr>
				          		<tr>
				          			<td>Admin Fee :</td>
				          			<td class="pull-right"> {{ $data->admin_fee }} </td>
				          		</tr>
				          		<tr>
				          			<td>Discount :</td>
				          			<td class="pull-right"> {{ $data->discount }} </td>
				          		</tr>
				          		<tr>
				          			<td>Total Order :</td>
				          			<td class="pull-right"> 
				          				@if(isset($data2)) {{ $data->total_amount }} @endif 
				          			</td>
				          		</tr>
				          	</table>

				          	<br>

				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<td>Country List :</td>
				          			<td> Singapore </td>
				          		</tr>
				          	</table>
				        </div>

				        <div class="col-md-12"> 
				          	<table class="table table-bordered table-striped">
				          		<tr>
				          			<th> Seq </th>
				          			<th> Country </th>
				          			<th> Start Date </th>
				          			<th> End Date </th>
				          			<th> Days </th>
				          			<th> Daily Rental </th>
				          			<th> Total Rental </th>
				          			<th> Status </th>
				          		</tr>
				          		@if(isset($data2))
				          			@foreach($data2 as $v)
					          		<tr>
					          			<td> 1 </td>
					          			<td> {{ $v['country_name'] }} </td>
					          			<td> <?php echo date('Y-m-d', strtotime( $v['start_date'] ));?> </td>
					          			<td> <?php echo date('Y-m-d', strtotime( $v['end_date'] ));?> </td>
					          			<td> {{ $v['days'] }} </td>
					          			<td> {{ $v['selling_unit_price'] }} </td>
					          			<td> {{ $v['selling_amount'] }} </td>
					          			<td> {{ $v['status'] }} </td>
					          		</tr>
					          		@endforeach
				          		@else
					          		<tr>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          			<td> - </td>
					          		</tr>
				          		@endif
				          		
				          	</table>

				          	<a href="{{ url('order/add/'.$data->id) }}"><button class="btn btn-info">
				          		Add Country
				          	</button></a>
				          	&nbsp;

				          	<a href=""><button class="btn btn-success">
				          		Approve Order
				          	</button></a>
				          	&nbsp;

				          	<a href="{{ url('order/email/'.$data->id) }}"><button class="btn btn-default">
				          		Email Order
				          	</button></a>
				          	&nbsp;
				        </div>
			        </div>
			    </div>

			</div>			
		</div>
	</section>
@stop