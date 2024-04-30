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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('hostel'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('add_hostel', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hostel Fee Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/addroom/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
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
                                    <input name="hostel_invoice" placeholder="" type="text" class="form-control" readonly  value="<?php $hinvoice = $this->Addhostel_model->hinvoicedetails();
                                    foreach($hinvoice as $hkey){
                                        $hid=$hkey->hostel_invoice;
                                        $hid++;
                                    }
                                    print_r($hid);
                                    ?>">
                                    <span class="text-danger"><?php echo form_error('invoice'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('name'); ?></label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone no.</label><small class="req"> *</small>
                                    <input maxlength="10" name="phone_no" placeholder="" type="text" class="form-control"  value="<?php echo set_value('phone_no'); ?>" />
                                    <span class="text-danger"><?php echo form_error('phone_no'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Father Name</label><small class="req"> *</small>
                                    <input name="father_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('father_name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hostel Name</label><small class="req"> *</small>
                                     <select class="form-control" name="hostel_name">
                                    <?php $hlist = $this->Addhostel_model->hostellist();?>
                                    <option>Select hostel</option>
                                    <?php foreach ($hlist as $hostellist) {?>
                                        <option value="<?=$hostellist->hostel_name; ?>"><?=$hostellist->hostel_name; ?></option>
                                       
                                  <?php } ?>
                                   </select>
                                   <!--  <input autofocus="" id="amount" name="hostel_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostel_name'); ?>" /> -->
                                    <span class="text-danger"><?php echo form_error('name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date</label><small class="req"> *</small>
                                    <input autofocus="" name="date" placeholder="" type="date" class="form-control"  value="<?php echo set_value('date'); ?>" />
                                    <span class="text-danger"><?php echo form_error('date'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Total Hostel fee</label><small class="req"> *</small>
                                    <input id="hostel_fee" name="hostel_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('hostel_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostel_fee'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Paid fee</label><small class="req"> *</small>
                                    <input id="paid_fee" name="paid_fee" oninput="calculate();" placeholder="" type="number" class="form-control"  value="<?php echo set_value('paid_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('paid_fee'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Remaining fee</label><small class="req"> *</small>
                                    <input id="remain_fee" name="remaining_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('remaining_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('remaining_fee'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Class</label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="class" placeholder="" type="text" class="form-control"  value="<?php echo set_value('class'); ?>" />
                                    <span class="text-danger"><?php echo form_error('class'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Room no.</label><small class="req"> *</small>
                                   <select class="form-control" name="room_no">
                                    <?php $room = $this->Addhostel_model->roomlisting();?>
                                    <option>Select room</option>
                                    <?php foreach ($room as $roomlist) {?>
                                        <option value="<?=$roomlist->room_no; ?>"><?=$roomlist->room_no; ?></option>
                                       
                                  <?php } ?>
                                   </select>
                                    <span class="text-danger"><?php echo form_error('room_no'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Room type</label><small class="req"> *</small>
                                   <select class="form-control" name="room_type">
                                    <?php $roomtype = $this->Addhostel_model->roomtypelist();?>
                                    <option>Select roomtype</option>
                                    <?php foreach ($roomtype as $room) {?>
                                        <option value="<?=$room->room_type; ?>"><?=$room->room_type; ?></option>
                                       
                                  <?php } ?> 
                                   </select>
                                    <span class="text-danger"><?php echo form_error('room_type'); ?></span>
                                </div>
                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                            </div>
                        </form>
                    </div>

                 <script>
                 function calculate(){
                    var a = document.getElementById('hostel_fee').value;
                    var b = document.getElementById('paid_fee').value;
                    var c = a-b;
                    document.getElementById('remain_fee').value=""+c;
                }
                </script>

                </div><!--/.col (right) -->
                <!-- left column -->
            <?php } ?>
            <div class="col-md-<?php
            if ($this->rbac->hasPrivilege('add_hostel', 'can_add')) {
                echo "8";
            } else {
                echo "12";
            }
            ?>">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Hostel Fee Details</h3>
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
                                        <th>Invoice No</th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th>Phone no</th>
                                        <th><?php echo $this->lang->line('hostel_name'); ?></th>
                                        <th>Total Hostel Fee</th>
                                        <th>Paid amount</th>
                                        <th>Remaining fee</th>
                                        <th>Date</th>
                                        <th>Room no</th>
                                        <th><?php echo $this->lang->line('room_type'); ?></th>
                                        <th>Class</th>
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
                                        foreach ($hdata as $hostelroom) {
                                            ?>
                                            <tr>
                                               
                                                <td class="mailbox-name"> <?php echo $hostelroom->hostel_invoice; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->name; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->phone_no; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->hostel_name; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->hostel_fee; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->paid_fee; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->remaining_fee; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->date; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->room_no; ?></td> 
                                                <td class="mailbox-name"> <?php echo $hostelroom->room_type; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelroom->class; ?></td>
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                     <!-- <a data-placement="left" title="invoice" data-toggle="tooltip" href="<?php echo base_url(); ?>admin/addhostel/invoice/<?php echo $hostelroom->id ?>"><i class="fa fa-download" aria-hidden="true"></i></a> -->
                                                   <?php if ($this->rbac->hasPrivilege('add_hostel', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/addhostel/delete/<?php echo $hostelroom->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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