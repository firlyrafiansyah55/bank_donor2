<?php
	include('../header.php');
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script type="text/javascript" src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
	$(document).ready(function() {
    $('#request').DataTable();
} );
</script>
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">

  <h2>Hello,  <span style="color: blue"> <?php echo $_SESSION['username']?></span> Listed Requested. </h2> <br />
           
  
  <table class="table table-bordered" id="request">
    <thead>
      <tr>
        <th>NIK</th>
        <th>Name</th>
        <th>Address</th>
        <th>Date</th>
        <th>Blood</th>
        <th>Email</th>
        <th>KTP</th>
        <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
      <?php
      $members= $connection->query("SELECT * FROM requester WHERE member_fk='".$_SESSION['membername']."'");
      while($row = $members->fetch_array()) {
       ?>

        <tr>
        <td><?php echo $row['contact_no'];?></td>
        <td><?php echo $row['patient_name'];?></td>
        <td><?php echo $row['address'];?></td>
        <td><?php echo date('d/M/Y',strtotime($row["date"]));?></td>
        <td><?php echo $row['blood_group'];?></td>
        <td><?php echo $row['email'];?></td>

       
        <td><?php if($row['image'] == ''){ ?>
        <img src="http://wiki.bdtnrm.org.au/images/8/8d/Empty_profile.jpg" width="30px" height="30px">
        <?php   } else { ?>
        <img src="../<?php echo $row['image'];?>" width="30px" height="30px">
        <?php  } ?></td>
          
          <td><button type="button" data-toggle="modal" data-target="#deletrequester<?php echo $row['requester_id']?>" class="btn btn-danger">Delete</button>
         


          </td>
         
        </tr>
         <!-- delete city modal -->
        <div class="modal fade" id="deletrequester<?php echo $row['requester_id']?>" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Are you sure ?</h4>
        </div>
        <div class="modal-body">
          <p>Want to delete ?</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <a href="delete_requester.php?requester_id=<?php echo $row['requester_id'];?>"> <button type="button" class="btn btn-danger">Delete</button></a>
        </div>
      </div>
    </div>
  </div>
  <!-- end of delete state modal -->
 

   
<?php }
      ?>
    </tbody> 
  </table>
</div>
	</div>
</div>

<!-- add state modal -->


<?php
	include('../footer.php');
	?>