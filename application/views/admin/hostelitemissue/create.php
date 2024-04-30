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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('hostelitemissue'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('hostelitemissue', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Item</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/hostelitemissue/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                            <div class="box-body">
                                <?php if ($this->session->flashdata('msg')) { ?>
                                    <?php echo $this->session->flashdata('msg') ?>
                                <?php } ?>
                                <?php echo $this->customlib->getCSRF(); ?>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> User Type </label><small class="req"> *</small>
                                    <?php $rolelist = $this->Hostelitemissue_model->rolelist(); ?>
                                    <select class="form-control" name="hostelissue_type">
                                        <option>Select option</option>
                                        <?php foreach ($rolelist as $role) {?>
                                           <option value="<?php echo $role->name; ?>"><?php echo $role->name; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Issue to </label><small class="req"> *</small>
                                    <?php $item = $this->Hostelitemissue_model->stafflist(); ?>
                                    <select class="form-control" name="hostelissue_to">
                                        <option>Select option</option>
                                        <?php foreach ($item as $item) {?>
                                           <option value="<?php echo $item->name; ?>"><?php echo $item->name; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Issue by </label><small class="req"> *</small>
                                    <?php $issue_by = $this->Hostelitemissue_model->stafflist(); ?>
                                    <select class="form-control" name="hostelissue_by">
                                        <option>Select option</option>
                                        <?php foreach ($issue_by as $issue_by) {?>
                                           <option value="<?php echo $issue_by->name; ?>"><?php echo $issue_by->name; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Issue date </label><small class="req"> *</small>
                                   <input id="issue_date" name="hostelissue_date" placeholder="" type="text" class="form-control date" value="" readonly="" autocomplete="off">
                                </div>

                              

                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Return date </label><small class="req"> *</small>
                                   <input name="hostelreturn_date" placeholder="" type="text" class="form-control date" value="" readonly="" autocomplete="off">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Note </label><small class="req"> *</small>
                                    <input autofocus="" id="name" name="hostelnote" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelpurchase_price'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelpurchase_price'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Item Category </label><small class="req"> *</small>
                                    <?php $item = $this->Hostelitemissue_model->itemcategorylist(); ?>
                                    <select class="form-control" name="hostelitem_category_id">
                                        <option>Select option</option>
                                        <?php foreach ($item as $item) {?>
                                           <option value="<?php echo $item->hostelitem_category; ?>"><?php echo $item->hostelitem_category; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                   <!--  <input name="hosteldate" placeholder="" type="date" class="form-control"  value="<?php echo set_value('hosteldate'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hosteldate'); ?></span> -->
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Item </label><small class="req"> *</small>
                                    <?php $hitem = $this->Hostelitemissue_model->itemlist(); ?>
                                    <select class="form-control" name="hostelitem_id">
                                        <option>Select option</option>
                                        <?php foreach ($hitem as $item) {?>
                                           <option value="<?php echo $item->hostelitemname; ?>"><?php echo $item->hostelitemname; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Quantity </label><small class="req"> *</small>
                                    <input name="hostelquantity" placeholder="" type="number" class="form-control"  value="<?php echo set_value('hostelquantity'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelquantity'); ?></span>
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
            if ($this->rbac->hasPrivilege('hostelitemissue', 'can_add')) {
                echo "8";
            } else {
                echo "12";
            }
            ?>">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Hostel Item issue list</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Hostel Item issue list</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>User type</th>
                                        <th>Issue to</th>
                                        <th>Issue by</th>
                                        <th>Issue date</th>
                                        <th>Return date</th>
                                        <th>Item category</th>
                                        <th>Item</th>
                                        <th>Qty</th>
                                        <th>Note</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach($hostelitemissuelist as $hostelissue) {?>
                                            <tr>   


                                              <td class="mailbox-name"> <?php echo $hostelissue->hostelissue_type; ?></td>
                                              <td class="mailbox-name"> <?php echo $hostelissue->hostelissue_to; ?></td>
                                               <td class="mailbox-name"> <?php echo $hostelissue->hostelissue_by; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelissue_date; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelreturn_date; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelitem_category_id; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelitem_id; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelquantity; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelissue->hostelnote; ?></td>
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                    
                                                    <?php if ($this->rbac->hasPrivilege('hostelitemissue', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/hostelitemissue/delete/<?php echo $hostelissue->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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