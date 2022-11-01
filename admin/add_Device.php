<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('Device_sidebar.php'); ?>

						<div class="span9" id="content">
		                    <div class="row-fluid">

		                        <!-- block -->
		                        <div class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Add Device</div>
										<div class="muted pull-right"><a id="return" data-placement="left" title="Click to Return" href="device_stocks.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#return').tooltip('show');
										$('#return').tooltip('hide');
										});
										</script>
		                            </div>

		                <div class="block-content collapse in">
                         <div class="alert alert-success"><i class="icon-info-sign"></i> Please Fill in required details</div>
								<?php
								$query = mysql_query("SELECT MAX(id) AS id FROM stdevice");
								$skm = mysql_fetch_array($query);
								$kodebaru = $skm['id']+1;
								?>
							<form class="form-horizontal" method="post">
										<div class="control-group" style="display: none;">
										<label class="control-label" for="inputPassword">Tanggal Pembelian</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $kodebaru ?>" name="id" id="inputPassword">
										</div>
										</div>
										<div class="control-group">
		                                 <label class="control-label" for="inputEmail">Device Name</label>
			                                <div class="controls">
				                              <select name="dev_id" class="chzn-select"  required/>
				                                 <option></option>
			                                     <?php $device_name=mysql_query("select * from device_name")or die(mysql_error());
			                                     while ($row=mysql_fetch_array($device_name)){
												 ?>
				                                 <option value="<?php echo $row['dev_id']; ?>_Name_<?php echo $row['dev_name']; ?>"><?php echo $row['dev_name']; ?></option>
				                                 <?php } ?>
				                               </select>
		                                     </div>
	                                    </div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Tanggal Pembelian</label>
											<div class="controls">
											<input type="date" class="span8" name="tgl" id="inputPassword" placeholder="Tanggal Pembelian" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Tanggal Garansi</label>
											<div class="controls">
											<input type="date" class="span8" name="tgl_garansi" id="inputPassword" placeholder="Tanggal Garansi" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Device Brand</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_brand" id="inputPassword" placeholder="Device Brand">
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Harddisk Brand & Capacity</label>
											<div class="controls">
											<input type="text" class="span8" name="harddisk" id="inputPassword" placeholder="Harddisk Brand & Size" >
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">RAM Model & Capacity</label>
											<div class="controls">
											<input type="text" class="span8" name="ram" id="inputPassword" placeholder="RAM Brand & Size" >
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Device Serial Number</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_serialnm" id="inputPassword" placeholder="Device Serial Number">
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Inventory Code</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_serial" id="inputPassword" placeholder="Inventory Code">
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Device Model / Type</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_model" id="inputPassword" placeholder="Device Model / Type" >
											</div>
										</div>

										<div id="hide">
										<div class="control-group">
											<label class="control-label" for="inputPassword"  placeholder="Device Status" >Device Status</label>
											<div class="controls">
											<select name="dev_status"  required>
													<option>New</option>
												</select>
											</div>
										</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">OS & Licensi</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_desc" id="inputPassword" placeholder="OS & Licensi" >
											</div>
										</div>

										<!----!<div class="control-group">
											<label class="control-label" for="inputPassword">Description</label>
											<div class="controls">
													<textarea name="dev_desc" id="ckeditor_full"></textarea>
											</div>
										</div>---->

										<div class="control-group">
										<div class="controls">
										<button name="save" id="save" name="singlebutton" data-placement="right" title="Click here to Save your new data." class="btn btn-primary"><i class="icon-save"></i> Save</button>
										</div>
										</div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#save').tooltip('show');
										$('#save').tooltip('hide');
										});
										</script>
							</form>
<?php
if (isset($_POST['save'])){
$id = $_POST['id'];
$dev_id = $_POST['dev_id'];
$dev_desc = $_POST['dev_desc'];
$dev_serial = $_POST['dev_serial'];
$dev_serialnm = $_POST['dev_serialnm'];
$dev_brand = $_POST['dev_brand'];
$tgl = $_POST['tgl'];
$tgl_garansi = $_POST['tgl_garansi'];
$harddisk = $_POST['harddisk'];
$ram = $_POST['ram'];
$dev_model = $_POST['dev_model'];
$dev_status = $_POST['dev_status'];


$query = mysql_query("select * from stdevice where dev_serial = '$dev_serial' ")or die(mysql_error());
$count = mysql_num_rows($query);

if ($count > 0){ ?>
<script>
alert('Device Code Already Exist');
window.location = "device_stocks.php";
</script>
<?php
}else{
mysql_query("insert into stdevice (dev_id,dev_desc,dev_serial,dev_serialnm,dev_brand,tgl,tgl_garansi,harddisk,ram,dev_model,dev_status) values('$dev_id','$dev_desc','$dev_serial','$dev_serialnm','$dev_brand','$tgl','$tgl_garansi','$harddisk','$ram','$dev_model','$dev_status')")or die(mysql_error());
mysql_query("insert into activity_log (date,username,dev_id,action) values(NOW(),'$admin_username','$id','Add device Detail id $dev_id')")or die(mysql_error());
?>
<script>
window.location = "device_stocks.php";
$.jGrowl("Device Successfully added", { header: 'Device add' });
</script>
<?php
}
}
?>

		                            </div>
		                        </div>
		                        <!-- /block -->
		                    </div>
		                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
