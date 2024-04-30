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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('hostelitemstock'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('hostelitemstock', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Item</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form id="form1" action="<?php echo site_url('admin/hostelitemstock/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                            <div class="box-body">
                                <?php if ($this->session->flashdata('msg')) { ?>
                                    <?php echo $this->session->flashdata('msg') ?>
                                <?php } ?>
                                <?php echo $this->customlib->getCSRF(); ?>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Item Category  </label><small class="req"> *</small>
                                    <?php $hcategory = $this->Hostelitemstock_model->itemcategorylist(); ?>
                                    <select class="form-control" name="hostelitem_category_id">
                                        <option>Select option</option>
                                        <?php foreach ($hcategory as $category) {?>
                                           <option value="<?php echo $category->hostelitem_category; ?>"><?php echo $category->hostelitem_category; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Add Item </label><small class="req"> *</small>
                                    <?php $item = $this->Hostelitemstock_model->itemlist(); ?>
                                    <select class="form-control" name="hostelitem_id">
                                        <option>Select option</option>
                                        <?php foreach ($item as $item) {?>
                                           <option value="<?php echo $item->hostelitemname; ?>"><?php echo $item->hostelitemname; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Supplier </label><small class="req"> *</small>
                                    <?php $supplier = $this->Hostelitemstock_model->supplierlist(); ?>
                                    <select class="form-control" name="hostelsupplier_id">
                                        <option>Select option</option>
                                        <?php foreach ($supplier as $supplier) {?>
                                           <option value="<?php echo $supplier->hostelitem_supplier; ?>"><?php echo $supplier->hostelitem_supplier; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Store </label><small class="req"> *</small>
                                    <?php $store = $this->Hostelitemstock_model->storelist(); ?>
                                    <select class="form-control" name="hostelstore_id">
                                        <option>Select option</option>
                                        <?php foreach ($store as $store) {?>
                                           <option value="<?php echo $store->hostelitem_store; ?>"><?php echo $store->hostelitem_store; ?></option>
                                       <?php }?>
                                        
                                    </select>
                                </div>

                              

                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Quantity </label><small class="req"> *</small>
                                    <input autofocus="" id="name" name="hostelquantity" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelquantity'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelquantity'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Purchase price </label><small class="req"> *</small>
                                    <input autofocus="" id="name" name="hostelpurchase_price" placeholder="" type="text" class="form-control"  value="<?php echo set_value('hostelpurchase_price'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelpurchase_price'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date </label><small class="req"> *</small>
                                    <input name="hosteldate" placeholder="" type="date" class="form-control"  value="<?php echo set_value('hosteldate'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hosteldate'); ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Attach document </label><small class="req"> *</small>
                                   <input id="item_photo" name="hostelattachment" placeholder="" type="file" class="filestyle form-control" data-height="40"  value="<?php echo set_value('hostelattachment'); ?>" />
                                    <span class="text-danger"><?php echo form_error('hostelattachment'); ?></span>
                                </div>
                                
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                    <textarea class="form-control" name="hosteldescription" placeholder="" rows="3" placeholder="Enter ..."><?php echo set_value('hosteldescription'); ?></textarea>
                                    <span class="text-danger"><?php echo form_error('hosteldescription'); ?></span>
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
            if ($this->rbac->hasPrivilege('hostelitemstock', 'can_add')) {
                echo "8";
            } else {
                echo "12";
            }
            ?>">
                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Hostel Item Stock list</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Hostel Item Stock list</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Item category</th>
                                        <th>Item name</th>
                                        <th>Supplier</th>
                                        <th>Store</th>
                                        <th>Qty</th>
                                        <th>Purchase Price</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach($hostelitemstocklist as $hostelitemstock) {?>
                                            <tr>   


                                              <td class="mailbox-name"> <?php echo $hostelitemstock->hostelitem_category_id; ?></td>
                                              <td class="mailbox-name"> <?php echo $hostelitemstock->hostelitem_id; ?></td>
                                               <td class="mailbox-name"> <?php echo $hostelitemstock->hostelsupplier_id; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelitemstock->hostelstore_id; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelitemstock->hostelquantity; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelitemstock->hostelpurchase_price; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelitemstock->hosteldate; ?></td>
                                                <td class="mailbox-name"> <?php echo $hostelitemstock->hosteldescription; ?></td>
                                                
                                                <td class="mailbox-date pull-right no-print">
                                                    
                                                    <?php if ($this->rbac->hasPrivilege('hostelitem', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/hostelitem/delete/<?php echo $hostelitem->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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