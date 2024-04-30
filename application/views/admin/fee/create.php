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
            <?php if ($this->rbac->hasPrivilege('fee', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Student Fee Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/fee/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
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
                                    <input autofocus="" id="amount" name="invoice" placeholder="" type="text" class="form-control" readonly  value="<?php $invoice = $this->Fee_model->invoicedetails();
                                    foreach($invoice as $key){
                                        $nid=$key->invoice;
                                        $nid++;
                                    }
                                    print_r($nid);
                                    ?>">
                                    <span class="text-danger"><?php echo form_error('invoice'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('name'); ?></label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Class</label><small class="req"> *</small>
                                    <input autofocus="" id="amount" name="class" placeholder="" type="text" class="form-control"  value="<?php echo set_value('class'); ?>" />
                                    <span class="text-danger"><?php echo form_error('class'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone no.</label><small class="req"> *</small>
                                    <input autofocus="" id="amount" maxlength="10" name="phone_no" placeholder="" type="text" class="form-control"  value="<?php echo set_value('phone_no'); ?>" />
                                    <span class="text-danger"><?php echo form_error('phone_no'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Fathers/Mothers Name</label><small class="req"> *</small>
                                    
                                    <input name="father_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('father_name'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date</label><small class="req"> *</small>
                                    <input autofocus="" name="date" placeholder="" type="date" class="form-control"  value="<?php echo set_value('date'); ?>" />
                                    <span class="text-danger"><?php echo form_error('date'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Course fee</label><small class="req"> *</small>
                                    <input autofocus="" id="course_fee"  name="course_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('course_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('course_fee'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Discount Amount</label></small>
                                    <input name="discount_amt" oninput="calculate();" id="dis_amt" placeholder="" type="number" class="form-control"  value="<?php echo set_value('discount_amt'); ?>" />
                                    <span class="text-danger"><?php echo form_error('discount_amt'); ?></span>
                                </div> <div class="form-group">
                                    <label for="exampleInputEmail1">Total</label>
                                    <input autofocus="" id="total_fees" name="total_fee" placeholder="" type="number" class="form-control"  value="<?php echo set_value('total_fee'); ?>" />
                                    <span class="text-danger"><?php echo form_error('total_fee'); ?></span>
                                </div>

                               
                             
                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                            </div>
                        </form>
                    </div>

                </div><!--/.col (right) -->
                <!-- left column -->
            <?php } ?>
            <div class="col-md-<?php
            if ($this->rbac->hasPrivilege('fee', 'can_add')) {
                echo "8";
            } else {
                echo "12";
            }
            ?>">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Student Fee Details</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Student Fee Details</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Invoice No</th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th>Class</th>
                                        <th>Phone no</th>
                                        <th>Father/Mother Name</th>
                                        <th>Course Fee</th>
                                        <th>Discount</th>
                                        <th>Total</th>
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
                                        foreach ($feedata as $feedata) {
                                            ?>
                                            <tr>
                                               
                                                <td class="mailbox-name"> <?php echo $feedata->date; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->invoice; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->name; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->class; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->phone_no; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->father_name; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->course_fee; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->discount_amt; ?></td>
                                                <td class="mailbox-name"> <?php echo $feedata->total_fee; ?></td> 
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                    <a data-placement="left" title="invoice" data-toggle="tooltip" href="<?php echo base_url(); ?>admin/fee/invoice/<?php echo $feedata->id ?>"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                    <?php if ($this->rbac->hasPrivilege('fee', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/fee/delete/<?php echo $feedata->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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

 <script>
    function calculate(){
                                    var a = document.getElementById('course_fee').value;
                                    var b = document.getElementById('dis_amt').value;
                                    var c = a-b;
                                    document.getElementById('total_fees').value=""+c;
                                }
                                </script>