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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('fee'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php //if ($this->rbac->hasPrivilege('fee', 'can_add')) { ?>
                <div class="col-md-4" style="display: block !important;">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hostel Fee Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form action="<?php echo site_url('admin/hostel/store') ?>" method="post" accept-charset="utf-8">
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
                                    <label for="exampleInputEmail1">Invoice No.</label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="hinvoice" placeholder="" type="text" class="form-control" readonly  value="<?php $invoice = $this->Fee_model->invoicedetails();
                                    foreach($invoice as $key){
                                        $nid=$key->invoice;
                                        $nid++;
                                    }
                                    print_r($nid);
                                    ?>">
                                    <span class="text-danger"><?php echo form_error('invoice'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date</label>
                                    <input name="date" placeholder="" type="date" class="form-control"  value="<?php echo set_value('date'); ?>" />
                                    <span class="text-danger"><?php echo form_error('date'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Admission no.</label><small class="req"> *</small>
                                    <select class="form-control" name="admission_no" id="admission_number">
                                        <option>Select option</option>
                                            <?php $admissionno = $this->Fee_model->hostel_details();?>
                                            <?php foreach($admissionno as $admissionno){?>
                                                <option value="<?=$admissionno->id?>"><?=$admissionno->hosteladmission_no;?></option>
                                            <?php } ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Student Name</label>
                                    <input name="hostel_studentname" id="namestudent" placeholder="" type="text" class="form-control" value="<?php echo set_value('name'); ?>" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Class</label>
                                    <input id="class" name="class" placeholder="" type="text" class="form-control"  value="<?php echo set_value('class'); ?>" />
                                    <span class="text-danger"><?php echo form_error('class'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Gender</label>
                                   
                                    <input id="gender" name="gender" placeholder="" type="text" class="form-control"  value="<?php echo set_value('gender'); ?>" />
                                    <span class="text-danger"><?php echo form_error('gender'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone no.</label>
                                    <input id="phoneno" name="phone_number" type="number" class="form-control"  value="<?php echo set_value('phone_number'); ?>" />
                                    <span class="text-danger"><?php echo form_error('phone_number'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Father's Name</label>
                                    
                                    <input name="father_name" id="father_name" type="text" class="form-control"  value="<?php echo set_value('father_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('father_name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mother's Name</label>
                                    
                                    <input name="mother_name" id="mother_name" type="text" class="form-control"  value="<?php echo set_value('mother_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('mother_name'); ?></span>
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hostel Name</label>
                                    
                                    <input name="hostel_name" id="hostel_name" type="text" class="form-control"  value="<?php echo set_value('hostel_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostel_name'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Room Type</label>
                                    
                                    <input name="room_type" id="room_type" type="text" class="form-control"  value="<?php echo set_value('room_type'); ?>" />
                                    <span class="text-danger"><?php echo form_error('room_type'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Room Number</label>
                                    <input name="room_number" id="room_number" type="text" class="form-control"  value="<?php echo set_value('room_number'); ?>" />
                                    <span class="text-danger"><?php echo form_error('room_number'); ?></span>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Total Hostel fee</label>
                                    <input autofocus="" id="hostel_fee"  name="hostel_fee" placeholder="" type="number" class="form-control" value="<?php echo set_value('hostel_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostel_fee'); ?></span>
                                </div>

                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Paid Fee </label>
                                    <input name="paid_fee" id="paid_fee" placeholder="" type="number" class="form-control" value="<?php echo set_value('paid_fee'); ?>" oninput="calculate();"  />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Remaining fee</label>
                                    <input name="remaining_fee" id="remaining_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('remaining_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('remaining_fee'); ?></span>
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
                        <h3 class="box-title titlefix">Hostel Fee List</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Hostel Fee Details</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Invoice No</th>
                                        <th>Adm No.</th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th>Class</th>
                                        <th>Gender</th>
                                        <th>Phone no</th>
                                        <th>Father Name</th>
                                        <th>Mother Name</th>
                                        <th>Hostel Name</th>
                                        <th>Room Type</th>
                                        <th>Room Number</th>
                                        <th>Hostel Fee</th>
                                        <th>Paid Fee</th>
                                        <th>Remaining Fee</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>

                                        <?php
                                   // } //else {
                                        //$count = 1;
                                        foreach ($hostelfeedata as $hostelfeedata) {
                                            ?>
                                            <tr>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->date; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->hinvoice; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->admission_no; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->hostel_studentname; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->class; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->gender; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->phone_number; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->father_name; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->mother_name; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->hostel_name; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->room_type; ?></td>
                                                <td class="mailbox-name"><?php echo $hostelfeedata->room_number; ?></td> 
                                                <td class="mailbox-name"><?php echo $hostelfeedata->hostel_fee; ?></td> 
                                                <td class="mailbox-name"><?php echo $hostelfeedata->paid_fee; ?></td> 
                                                <td class="mailbox-name"><?php echo $hostelfeedata->remaining_fee; ?></td> 
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                    <!-- <a data-placement="left" title="invoice" data-toggle="tooltip" href="<?php echo base_url(); ?>admin/hostelfee/invoice/<?php echo $hostelfeedata->id ?>"><i class="fa fa-download" aria-hidden="true"></i></a> -->
                                                    <a target="_blank" data-placement="left" title="invoice" data-toggle="tooltip" href="<?php echo base_url(); ?>admin/hostelfee/invoice/<?php echo $hostelfeedata->id ?>"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                    <?php if ($this->rbac->hasPrivilege('fee', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/fee/delete/<?php echo $hostelfeedata->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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

 <!-- <script>
    function calculate(){
                                    var a = document.getElementById('course_fee').value;
                                    var b = document.getElementById('dis_amt').value;
                                    var c = a-b;
                                    document.getElementById('total_fees').value=""+c;
                                }
                                </script> -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script type=text/javascript>
    var base_url = '<?php echo base_url() ?>';
    $(document).on('change', '#admission_number', function() {
        var admstu = $(this).val();
        $.ajax({
            url: base_url + "admin/student/hostel-details",
            type: "POST",
            data: {
                admstu: admstu
            },
            dataType: 'json',
            success: function(response) {
               // var result = JSON.parse(response);
               var student = response.data;
                console.log(student);
               

               $('#namestudent').val(student.name);
               $('#class').val(student.class);
               $('#gender').val(student.gender);
               $('#phoneno').val(student.phone_no);
               $('#father_name').val(student.father_name);
               $('#mother_name').val(student.mother_name);
               $('#hostel_name').val(student.hostel_name);
               $('#room_type').val(student.room_type);
               $('#room_number').val(student.room_no);
               $('#hostel_fee').val(student.hostel_fee);
             
            
            },
            error: function(xhr) {
                console.log(xhr);
            }
        });
    });
</script>

<script>
    function calculate(){
                    var a = document.getElementById('hostel_fee').value;
                    var b = document.getElementById('paid_fee').value;
                    var c = a-b;
                    document.getElementById('remaining_fee').value=""+c;
                }
</script>