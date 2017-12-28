@extends('adminlte::page')

@section('title', 'Passpod - Insert Order')

@section('content_header')
    <h1>Insert Data</h1>
@stop

@section('content')
	<section class="content">
      	<div class="row">
      		<form method="POST" action="{{ '/order'}}">
                {!! csrf_field() !!}
		        <div class="col-md-6">
				    <div class="box box-warning">
				        <div class="box-header with-border">
				          	<h3 class="box-title">Keterangan</h3>
				        </div>
				        <div class="box-body">
				          	<div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <select class="form-control" name="source">
				                	<option value=""> Source </option>
				            		<option value="Walk In"> Walk In </option>
				            		<option value="Social Media"> Social Media </option>
				            		<option value="Travel Agent"> Travel Agent </option>
				            		<option value="Tour Leader"> Tour Leader </option>
				            		<option value="Web"> Web </option>
				            		<option value="Reseller"> Reseller </option>
				            		<option value="Add Quota"> Add Quota </option>
				            		<option value="Add Day"> Add Day </option>
				            		<option value="Travel Fair"> Travel Fair </option>
				                </select>
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <select class="form-control" name="know_from">
				                	<option value=""> Know From </option>
				            		<option value="Existing Customer"> Existing Customer </option>
				            		<option value="Instagram"> Instagram </option>
				            		<option value="Google"> Google </option>
				            		<option value="Facebook"> Facebook </option>
				            		<option value="Twitter"> Twitter </option>
				                </select>
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <select class="form-control" name="priority">
				            		<option value=""> Priority </option>
				            		<option value="Very Urgent"> Very Urgent </option>
				            		<option value="Urgent"> Urgent </option>
				            		<option value="Normal"> Normal </option>
				                </select>
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="quantity" class="form-control" placeholder="Quantity">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <select class="form-control" name="payment_method">
				                	<option value=""> Payment Method </option>
				            		<option value="Transfer"> Transfer </option>
				            		<option value="Debit"> Debit </option>
				            		<option value="CreditCard"> CreditCard </option>
				            		<option value="Cash"> Cash </option>
				                </select>
				            </div>
				        </div>
				    </div>
				
				    <div class="box box-info">
				        <div class="box-header with-border">
				          	<h3 class="box-title">Data Pemesan</h3>
				        </div>
				        <div class="box-body">
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="customer_name" class="form-control" placeholder="Customer Name">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="contact_phone" class="form-control" placeholder="Contact Phone">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="contact_wa" class="form-control" placeholder="Contact Whatsapp">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="email" class="form-control" placeholder="Email Address">
				            </div>
				        </div>
				    </div>
				</div>

				<div class="col-md-6">
					 <div class="box box-success">
				        <div class="box-header with-border">
				          	<h3 class="box-title">Alamat Pengiriman</h3>
				        </div>
				        <div class="box-body">
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="delivery_address" class="form-control" placeholder="Delivery Address">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="kecamatan" class="form-control" placeholder="Kecamatan">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="kelurahan" class="form-control" placeholder="Kelurahan">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="city" class="form-control" placeholder="City">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="province" class="form-control" placeholder="Province">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="zip" class="form-control" placeholder="Postal Code">
				            </div>
				    	</div>
				   	</div>
				    <div class="box box-danger">
				        <div class="box-header with-border">
				          	<h3 class="box-title">Akun Bank Pemesan</h3>
				        </div>
				        <div class="box-body">
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="bank_name" class="form-control" placeholder="Bank">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="bank_acc_no" class="form-control" placeholder="Account Number">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="bank_acc_name" class="form-control" placeholder="Account Name">
				            </div>
				        </div>
				    </div>
				</div>
				<div class="col-md-12">
				    <div class="box box-default">
				        <div class="box-header with-border">
				          	<h3 class="box-title">Lainnya</h3>
				        </div>
				        <div class="box-body">
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="agent_code" class="form-control" placeholder="Agent">
				            </div>
				            <br>
				            <div class="input-group">
				                <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
				                <input type="text" name="order_note" class="form-control" placeholder="Note">
				            </div>
				            <br>
				      	</div>
				    </div>
				    <div class="pull-right">
    		
	                    <button type="submit" class="btn btn-primary pull-right edit">
	                        Insert
	                    </button>
	            
	                </div>
				</div>
			</form>	
		</div>
	</section>
@stop