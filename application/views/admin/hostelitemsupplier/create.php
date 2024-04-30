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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('hostelitemsupplier'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('hostelitemsupplier', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hostel Fee Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/hostelitemsupplier/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                            <div class="box-body">
                                <?php if ($this->session->flashdata('msg')) { ?>
                                    <?php echo $this->session->flashdata('msg') ?>
                                <?php } ?>
                                <?php echo $this->customlib->getCSRF(); ?>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Name</label><small class="req"> *</small>
                                    <input autofocus="" id="name" name="hostelitem_supplier" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelitem_supplier'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelitem_supplier'); ?></span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Phone</label>
                                    <input id="phone" name="hostelphone" placeholder="" type="text" class="form-control"  value="<?php echo set_value('phone'); ?>" />
                                    <span class="text-danger"><?php echo form_error('phone'); ?></span>
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input id="text" name="hostelemail" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelemail'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelemail'); ?></span>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Contact Person Name</label>
                                    <input id="contact_person_name" name="hostelcontact_person_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelcontact_person_name'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelcontact_person_name'); ?></span>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Contact Person Phone</label>
                                    <input id="contact_person_phone" name="hostelcontact_person_phone" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelcontact_person_phone'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelcontact_person_phone'); ?></span>
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputEmail1"> Contact Person Email</label>
                                    <input id="contact_person_email" name="hostelcontact_person_email" placeholder="" type="email" class="form-control"  value="<?php echo set_value('hostelcontact_person_email'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelcontact_person_email'); ?></span>
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                    <textarea class="form-control" id="description" name="hosteldescription" placeholder="" rows="3" placeholder="Enter ..."><?php echo set_value('description'); ?></textarea>
                                    <span class="text-danger"><?php echo form_error('description'); ?></span>
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
            if ($this->rbac->hasPrivilege('hostelsupplier', 'can_add')) {
                echo "8";
            } else {
                echo "12";
            }
            ?>">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Hostel Item supplier list</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Hostel Item supplier list</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Item supplier</th>
                                        <th>Phone no</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Contact Person</th>
                                        <th>Contact Person phone no</th>
                                        <th>Contact Person Email</th>
                                        <th>Description</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    
                                        foreach ($hostelitemsupplierlist as $hostelsupplier) {
                                            ?>
                                            <tr>   


                                              <td class="mailbox-name"> <?php echo $hostelsupplier->hostelitem_supplier; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hostelphone; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hostelemail; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hosteladdress; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hostelcontact_person_name; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hostelcontact_person_phone; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hostelcontact_person_email; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelsupplier->hosteldescription; ?></td>
                                                <td class="mailbox-date pull-right no-print">
                                                    
                                                    <?php if ($this->rbac->hasPrivilege('hostelitemsupplier', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/hostelitemsupplier/delete/<?php echo $hostelsupplier->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
                                                            <i class="fa fa-remove"></i>
                                                        </a>
                                                    <?php } ?>
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                        // $count++;
                                    //}
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