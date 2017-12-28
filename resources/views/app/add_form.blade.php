@extends('adminlte::page')

@section('title', 'Passpod - Add Order')

@section('content_header')
    <h1>Add Country</h1>
@stop

@section('content')
	<section class="content">
      	<div class="row">
			<div class="box box-info">
		        <div class="box-header with-border">
		          	<h3 class="box-title">Order Detail</h3>
		        </div>
		        <div class="box-body">
		        	<table class="table table-bordered table-striped">
		          		<tr>
		          			<td>Order ID :</td>
		          			<td> {{ $data->order_id }} </td>
		          		</tr>
		          		<tr>
		          			<td>Order Date :</td>
		          			<td> {{ $data->order_date }} </td>
		          		</tr>
		          		<tr>
		          			<td>Status :</td>
		          			<td> {{ $data->order_status }} </td>
		          		</tr>
		          		<tr>
		          			<td> Customer Name :</td>
		          			<td> {{ $data->customer_name }} </td>
		          		</tr>
		          	</table>
		          	<br>
		        	<form method="POST" action="{{ '/order/add'}}">
                		{!! csrf_field() !!}
			          	<div class="input-group">
			          		<input type="hidden" name="id" value ="{{$data->id}}" >
			                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
			                <select class="form-control" name="country">
			                	@foreach($country as $v)
			                		<option value="{{ $v->country_id }}"> {{ $v->country_name }} </option>
			                	@endforeach
			                </select>
			            </div>
			            <br>
			            <div class="input-group">
			                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
			                <input type="date" name="start_date" class="form-control" placeholder="Start Date">
			            </div>
			            <br>
			            <div class="input-group">
			                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
			                <input type="date" name="end_date" class="form-control" placeholder="End Date">
			            </div>
			            <br>

			            <h4> Top Destination </h4>
			            <div class="checkbox">
			            	<table class="table">
			            		<tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Belgium">Belgium</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="France">France</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Germany">Germany</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Italy">Italy</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Luxemburg">Luxemburg</label>
					                </td>
					            </tr>
					            <tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Netherlands">Netherlands</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Spain">Spain</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Switzerland">Switzerland</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="United Kingdom">United Kingdom</label>
					                </td>
					            </tr>
		                    </table>
		                </div>

		                <h4> Other Europe </h4>
			            <div class="checkbox">
			            	<table class="table">
			            		<tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Austria">Austria</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Bulgaria">Bulgaria</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Croatia">Croatia</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Cyprus">Cyprus</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Czech Republic">Czech Republic</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Estonia">Estonia</label>
					                </td>
					            </tr>
					            <tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Gibraltar">Gibraltar</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Greece">Greece</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Hungary">Hungary</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Iceland">Iceland</label>
					                </td>
					                 <td>
					                    <label><input type="checkbox" name="detail" value="Ireland">Ireland</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Liechtenstein">Liechtenstein </label>
					                </td>
					            </tr>
					            <tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Lithuania">Lithuania</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Malta">Malta</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Poland">Poland</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Portugal">Portugal </label>
					                </td>
					                 <td>
					                    <label><input type="checkbox" name="detail" value="Romania">Romania</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Russia">Russia</label>
					                </td>
					            </tr>
					            <tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Slovakia">Slovakia</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Slovenia">Slovenia</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Turkey">Turkey</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Latvia">Latvia</label>
					                </td>
					                 <td>
					                    <label><input type="checkbox" name="detail" value="Monaco">Monaco</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Ukraine">Ukraine</label>
					                </td>
					            </tr>
		                    </table>
		                </div>

		                <h4> Nothern Europe </h4>
			            <div class="checkbox">
			            	<table class="table">
			            		<tr>
			            			<td>
					                    <label><input type="checkbox" name="detail" value="Denmark">Denmark</label>
					                </td>
					                <td>
					                   	<label><input type="checkbox" name="detail" value="Finland">Finland</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Norway">Norway</label>
					                </td>
					                <td>
					                    <label><input type="checkbox" name="detail" value="Sweden">Sweden</label>
					                </td>
					            </tr>
		                    </table>
		                </div>

			            <br>
	                    <button type="submit" class="btn btn-primary pull-right edit">
	                        Insert
	                    </button>
                  
	                </form>
		      	</div>
		    </div>
		</div>
	</section>
@stop