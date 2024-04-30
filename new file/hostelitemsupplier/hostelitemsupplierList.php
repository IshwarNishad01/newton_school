
<div class="content-wrapper" style="min-height: 946px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-object-group"></i> <?php echo $this->lang->line('hostel inventory'); ?></h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('hostelsupplier', 'can_add')) { ?>
                <div class="col-md-4">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hostel Add_item supplier</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form  action="<?php echo site_url('admin/hostelitemsupplier/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
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
                                    <label for="exampleInputEmail1">Address</label>
                                    <textarea class="form-control" id="address" name="hosteladdress" placeholder="" rows="3" placeholder="Enter ..."><?php echo set_value('hosteladdress'); ?></textarea>
                                    <span class="text-danger"><?php echo form_error('hosteladdress'); ?></span>
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
                                    <textarea class="form-control" id="description" name="description" placeholder="" rows="3" placeholder="Enter ..."><?php echo set_value('description'); ?></textarea>
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
                <div class="box box-primary" id="exphead">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Hostel Item supplier list</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body  ">
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Hostel Item_supplier list</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>Item supplier</th>
                                        <th>Contact person</th>
                                        <th>Address</th>
                                        <th class="text-right no-print"><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (empty($hostelitemsupplierlist)) {
                                        ?>

                                        <?php
                                    } else {
                                        $count = 1;
                                        foreach ($hostelitemsupplierlist as $hostelsupplier) {
                                            ?>
                                            <tr>   


                                                <td class="mailbox-name">

                                                    <a href="#" data-toggle="popover" class="detail_popover" >
                                                        <?php echo $hostelsupplier['hostelitem_supplier'] ?>
                                                        <br>
                                                    </a>
                                                    <?php
                                                    if ($hostelsupplier['hostelphone'] != "") {
                                                        ?>
                                                        <i class="fa fa-phone-square"></i> <?php echo $hostelsupplier['hostelphone'] ?>
                                                        <br>
                                                        <?php
                                                    }
                                                    ?>
                                                    <?php
                                                    if ($hostelsupplier['hostelemail'] != "") {
                                                        ?>
                                                        <i class="fa fa-envelope"></i> <?php echo $hostelsupplier['hostelemail'] ?>

                                                        <?php
                                                    }
                                                    ?>

                                                    <div class="fee_detail_popover" style="display: none">
                                                        <?php
                                                        if ($supplier['hosteldescription'] == "") {
                                                            ?>
                                                            <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <p class="text text-info"><?php echo $hostelsupplier['hosteldescription']; ?></p>
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>
                                                </td>
                                                <td class="mailbox-name">
                                                    <?php
                                                    if ($hostelsupplier['hostelcontact_person_name'] != "") {
                                                        ?>
                                                        <i class="fa fa-user"></i> <?php echo $hostelsupplier['hostelcontact_person_name'] ?>
                                                        <br>
                                                        <?php
                                                    }
                                                    ?>
                                                    <?php
                                                    if ($hostelsupplier['hostelcontact_person_phone'] != "") {
                                                        ?>
                                                        <i class="fa fa-phone-square"></i> <?php echo $hostelsupplier['hostelcontact_person_phone'] ?>
                                                        <br>
                                                        <?php
                                                    }
                                                    ?>
                                                    <?php
                                                    if ($hostelsupplier['hostelcontact_person_email'] != "") {
                                                        ?>
                                                        <i class="fa fa-envelope"></i> <?php echo $hostelsupplier['hostelcontact_person_email'] ?>
                                                        <?php
                                                    }
                                                    ?>
                                                </td>
                                                <td class="mailbox-name">
                                                    <?php
                                                    if ($hostelsupplier['hosteladdress'] != "") {
                                                        ?>
                                                        <i class="fa fa-building"></i> <?php echo $hostelsupplier['hosteladdress'] ?>
                                                        <?php
                                                    }
                                                    ?>

                                                </td>
                                                <td class="mailbox-date pull-right no-print">
                                                    <?php if ($this->rbac->hasPrivilege('hostelsupplier', 'can_edit')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/hostelitemsupplier/edit/<?php echo $hostelsupplier['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('edit'); ?>">
                                                            <i class="fa fa-pencil"></i>
                                                        </a>
                                                    <?php } if ($this->rbac->hasPrivilege('hostelsupplier', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/hostelitemsupplier/delete/<?php echo $hostelsupplier['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
                                                            <i class="fa fa-remove"></i>
                                                        </a>
                                                    <?php } ?>
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                        $count++;
                                    }
                                    ?>

                                </tbody>
                            </table><!-- /.table -->
                        </div><!-- /.mail-box-messages -->
                    </div><!-- /.box-body -->
                </div>
            </div>

            <!-- right column -->

        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#btnreset").click(function () {
            $("#form1")[0].reset();
        });
    });

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

<script type="text/javascript">
    var base_url = '<?php echo base_url() ?>';


</script>
