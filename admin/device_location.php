<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body id="class_div">
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('device_location_slidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">

                        <div class="block">
								<div class="navbar navbar-inner block-header">
								    <div class="muted pull-left"><i class="icon-reorder icon-building"></i> Location Display List</div>

						<div id="" class="muted pull-right">
								<?php
								$my_location = mysql_query("select * from stlocation ")or die(mysql_error());
								$count_my_location = mysql_num_rows($my_location);?>
								Number of Display Location: <span class="badge badge-info"><?php echo $count_my_location; ?></span>
						</div>

								</div>
                <table width="100%">

                            <div class="block-content collapse in">
                                <div class="span12">


										<?php
										$query = mysql_query("select * from stlocation")or die(mysql_error());
										$count = mysql_num_rows($query);
                    $row_count=0;
                    $col_count=0;
										if ($count > 0){
										while($row = mysql_fetch_array($query)){
										$stdev_id = $row['stdev_id'];
                    if($row_count%4==0){
                   echo "<tr>";
                   $col_count=1;}
										?>
                    <td>
										<li id="del<?php echo $id; ?>">
												<a href="mydevice.php<?php echo '?stdev_id='.$stdev_id; ?>">
													<img src ="<?php echo $row['thumbnails'] ?>" width="130" height="148" class="img-polaroid" alt="">
													<div>
													<span><p><?php echo $row['stdev_location_name']; ?></p></span>
													</div>
												</a>
                        <?php include('count_device.php') ?>
                        <p class="class"><?php echo $row['stdev_location_name']; ?>
                        <?php if($not_count == '0'){
                                         }else{ ?>
                                      <span class="badge badge-success"><?php echo $not_count; ?></span>
                                         <?php } ?>
                        </p>
									    </li>
                      </td>
										<?php if($col_count==4){
           echo "</tr>";
        }
        $row_count++;
        $col_count++;
    }
  }else{ ?>
									     <div class="alert alert-info"><i class="icon-info-sign"></i> No Location Currently Added</div>
										<?php  } ?>
									</ul>

                </tr>
              </td>
</table>



                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('../technical staff/script.php'); ?>
    </body>
