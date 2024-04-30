<style type="text/css">
    @media print
    {
        .no-print, .no-print *
        {
            display: none !important;
        }
    }
</style>
<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>     
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('transport'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php //if ($this->rbac->hasPrivilege('transport_form', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Transport Fee Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/transport/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                            <div class="box-body">
                                <?php if ($this->session->flashdata('msg')) { ?>
                                    <?php echo $this->session->flashdata('msg') ?>
                                <?php } ?>
                                <?php
                                if (isset($error_message)) {
                                    echo "<div class='alert alert-danger'>" . $error_message . "</div>";
                                }
                                ?>
                                <?php echo $this->customlib->getCSRF(); ?>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Admission no</label><small class="req"> *</small>
                                    <select class="form-control" name="adm_no" id="admissionid">
                                        <option>Select option</option>
                                            <?php $admno = $this->Fee_model->adm_details();?>
                                            <?php foreach($admno as $adm){?>
                                                <option value="<?=$adm->id?>"><?=$adm->admission_no;?></option>
                                            <?php } ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('name'); ?></label><small class="req"> *</small>
                                    <input autofocus="" id="studentname" name="name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Class</label><small class="req"> *</small>
                                    <input autofocus="" id="class" name="class" placeholder="" type="text" class="form-control"  value="<?php echo set_value('class'); ?>" />
                                    <span class="text-danger"><?php echo form_error('class'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Gender</label>
                                    <input autofocus="" id="gender" name="gender" placeholder="" type="text" class="form-control"  value="<?php echo set_value('gender'); ?>" />
                                    <span class="text-danger"><?php echo form_error('gender'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone no.</label><small class="req"> *</small>
                                    <input autofocus="" id="mobile" maxlength="10" name="phone_no" placeholder="" type="text" class="form-control"  value="<?php echo set_value('phone_no'); ?>" />
                                    <span class="text-danger"><?php echo form_error('phone_no'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Address</label><small class="req"> *</small>
                                    <input autofocus="" id="address" name="address" placeholder="" type="text" class="form-control"  value="<?php echo set_value('address'); ?>" />
                                    <span class="text-danger"><?php echo form_error('address'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Father's Name</label><small class="req"> *</small>
                                    <input autofocus="" id="father_name" name="father_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('father_name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mother's Name</label><small class="req"> *</small>
                                    <input autofocus="" id="mother_name" name="mother_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('mother_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('mother_name'); ?></span>
                                </div>
                                <!-- <div class="form-group">
                                    <label for="exampleInputEmail1">Date</label><small class="req"> *</small>
                                    <input autofocus="" name="date" placeholder="" type="date" class="form-control"  value="<?php echo set_value('date'); ?>" />
                                    <span class="text-danger"><?php echo form_error('date'); ?></span>
                                </div> -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Total Transport fee</label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="transport_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('transport_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('transport_fee'); ?></span>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Vehicle Name/Model</label><small class="req"> *</small>
                                   <select class="form-control" name="vehicle_name">
                                    <?php $vehicle = $this->Transportform_model->vehiclelisting();?>
                                    <option>Select vehicle</option>
                                    <?php foreach ($vehicle as $vehiclelist) {?>
                                        <option value="<?=$vehiclelist->vehicle_model; ?>"><?=$vehiclelist->vehicle_model; ?></option>
                                       
                                  <?php } ?>
                                   </select>
                                    <span class="text-danger"><?php echo form_error('vehicle_name'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">To</label><small class="req"> *</small>
                                   <select class="form-control" name="to">
                                    <?php $route = $this->Transportform_model->routeto();?>
                                    <option>Select subroute</option>
                                    <?php foreach ($route as $toroute) {?>
                                        <option value="<?=$toroute->subroute_name; ?>"><?=$toroute->subroute_name; ?></option>
                                       
                                  <?php } ?>
                                   </select>
                                    <span class="text-danger"><?php echo form_error('to'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">From</label><small class="req"> *</small>
                                    <input name="from" placeholder="" type="text" class="form-control"  value="Newton Academy" />
                                    <span class="text-danger"><?php echo form_error('from'); ?></span>
                                   <!-- <select class="form-control" name="from"> -->
                                    <?php //$froute = $this->Transportform_model->routefrom();?>
                                    <!-- <option>Select route</option> -->
                                    <?php //foreach ($froute as $fromroute) {?>
                                        <!-- <option value="<?=$fromroute->route_title; ?>"><?=$fromroute->route_title; ?></option> -->
                                       
                                  <?php //} ?>
                                   <!-- </select> -->
                                    <span class="text-danger"><?php echo form_error('from'); ?></span>
                                </div>
                               
                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                            </div>
                        </form>
                    </div>

                </div><!--/.col (right) -->
                <!-- left column -->
            <?php //} ?>
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Transport Fee Details</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Transport Fee Details</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Adm no.</th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th>Class</th>
                                        <th>Gender</th>
                                        <th>Phone no</th>
                                        <th>Address</th>
                                        <th>Father Name</th>
                                        <th>Mother Name</th>
                                        <th>Total Transport Fee</th>
                                        <th>To</th>
                                        <th>From</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // $c=mysqli_connect("localhost","tyektgaufg","bfGM5wS2Yj","tyektgaufg");
                                    // $q="select * from add_hostel";
                                    // $r=mysqli_query($c,$q);
                                   // $r = $this->addhostel_model->hostellisting();?>

                                    <?php 
                                    // echo $abc; 
                                    //print_r($r);
                                    ?>
                                    <?php //if (empty($hdata)) {
                                        ?>

                                        <?php
                                   // } //else {
                                        //$count = 1;
                                        foreach ($tdata as $transport_data) {
                                            ?>
                                            <tr>
                                               
                                                <td class="mailbox-name"> <?php echo $transport_data->adm_no; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->name; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->class; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->gender; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->phone_no; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->address; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->father_name; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->mother_name; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->transport_fee; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->to; ?></td>
                                                <td class="mailbox-name"> <?php echo $transport_data->from; ?></td>
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                   <?php if ($this->rbac->hasPrivilege('transport_form', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/transport/delete/<?php echo $transport_data->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
                                                            <i class="fa fa-remove"></i>
                                                        </a>
                                                    <?php } ?>
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                    //     $count++;
                                    // }
                                    ?>
                                </tbody>
                            </table><!-- /.table -->
                        </div><!-- /.mail-box-messages -->
                    </div><!-- /.box-body -->
                </div>
            </div><!--/.col (left) -->
            <!-- right column -->

        </div>
        <div class="row">
            <div class="col-md-12">
            </div><!--/.col (right) -->
        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script type="text/javascript">
    var base_url = '<?php echo base_url() ?>';
    function printDiv(elem) {
        Popup(jQuery(elem).html());
    }

    function Popup(data)
    {

        var frame1 = $('<iframe />');
        frame1[0].name = "frame1";
        frame1.css({"position": "absolute", "top": "-1000000px"});
        $("body").append(frame1);
        var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
        frameDoc.document.open();
        //Create a new HTML document.
        frameDoc.document.write('<html>');
        frameDoc.document.write('<head>');
        frameDoc.document.write('<title></title>');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/bootstrap/css/bootstrap.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/font-awesome.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/ionicons.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/AdminLTE.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/skins/_all-skins.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/iCheck/flat/blue.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/morris/morris.css">');


        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/datepicker/datepicker3.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/daterangepicker/daterangepicker-bs3.css">');
        frameDoc.document.write('</head>');
        frameDoc.document.write('<body>');
        frameDoc.document.write(data);
        frameDoc.document.write('</body>');
        frameDoc.document.write('</html>');
        frameDoc.document.close();
        setTimeout(function () {
            window.frames["frame1"].focus();
            window.frames["frame1"].print();
            frame1.remove();
        }, 500);


        return true;
    }
</script>
<script>
    $(document).ready(function () {
        $('.detail_popover').popover({
            placement: 'right',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function () {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script type=text/javascript>
    var base_url = '<?php echo base_url() ?>';
    $(document).on('change', '#admissionid', function() {
        var stuadm = $(this).val();
        // var rowIndex = $(this).closest("tr").index();
        $.ajax({
            url: base_url + "admin/student/allstudent",
            type: "POST",
            data: {
                stuadm: stuadm
            },
            dataType: 'json',
            success: function(response) {
               // var result = JSON.parse(response);
               var student = response.data;
               // console.log(student);
               // console.log(student.concession_percent);

               $('#studentname').val(student.firstname+" "+student.lastname);
               $('#class').val(student.class_id);
               $('#gender').val(student.gender);
               $('#mobile').val(student.mobileno);
               $('#address').val(student.address);
               $('#father_name').val(student.father_name);
               $('#mother_name').val(student.mother_name);
              
               //  // if (response.list) {
                //     let i = 1;
                //     $.each(response.list, function(index, value) {
                //         list += '<input type="text" id="" name="fname" class="" value="' + value.id + '"> ' + value.firstname + '<br>';
                //     });

                //     console.log(list);
                // }
                // $('tbody tr').eq(rowIndex).find('.doctorTd').html(list);
            },
            error: function(xhr) {
                console.log(xhr);
            }
        });
    });
</script>