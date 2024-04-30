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
            <i class="fa fa-building-o"></i> <?php echo $this->lang->line('concessionfee'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->rbac->hasPrivilege('concessionfee', 'can_add')) { ?>
                <div class="col-md-12">
                    <!-- Horizontal Form -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Concession Fee Structure Form</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <?php
                            $id=$_POST['id'];
                            $viewfee=$this->concession_model->concession_view($id);?>
                        <?php print_r($viewfee);?>
                        <form action="<?php echo site_url('admin/concessionfeestore') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
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
                                <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label for="exampleInputEmail1">Class</label><small class="req"> *</small>
                                    <input type="number" class="form-control" name="concession_class" value="<?php echo set_value('concession_class'); ?>" required>
                                    
                                    <span class="text-danger"><?php echo form_error('concession_class'); ?></span>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label for="exampleInputEmail1">Total Fees with GST 18%</label><small class="req"> *</small>
                                    <input type="number" class="form-control" name="concession_total_fee" value="<?php echo set_value('concession_total_fee'); ?>" required>
                                    
                                    <span class="text-danger"><?php echo form_error('concession_total_fee'); ?></span>
                                </div>
                            </div>

                            <h4>Concession with 5%</h4>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 5%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_five" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concession_total_five'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionfive_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionfive_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionfive_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionfive_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionfive_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionfive_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfive_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 10%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 10%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_ten" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concession_total_ten'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionten_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionten_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionten_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionten_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionten_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionten_installment_six" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionten_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 20% or Ex. Newton Student</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 20%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_twenty" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_twenty'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessiontwenty_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessiontwenty_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessiontwenty_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessiontwenty_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessiontwenty_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessiontwenty_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessiontwenty_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 30%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 30%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_thirty" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_thirty'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionthirty_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionthirty_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionthirty_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionthirty_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionthirty_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionthirty_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionthirty_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 40%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 40%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_fourty" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_fourty'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionfourty_installment_one" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionfourty_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionfourty_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionfourty_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionfourty_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionfourty_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfourty_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 50%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 50%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_fifty" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_fifty'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionfifty_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionfifty_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionfifty_installment_three" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionfifty_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionfifty_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionfifty_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionfifty_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 75%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 75%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_sevenfive" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_sevenfive'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionsevenfive_installment_one" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionsevenfive_installment_two" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionsevenfive_installment_three" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionsevenfive_installment_four" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionsevenfive_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionsevenfive_installment_six" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionsevenfive_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 85%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 85%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_eightfive" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concession_total_eightfive'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessioneightfive_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessioneightfive_installment_two" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessioneightfive_installment_three" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessioneightfive_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessioneightfive_installment_five" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessioneightfive_installment_six" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessioneightfive_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 90%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 90%</label><small class="req"> *</small>
                                    <input autofocus="" name="name" placeholder="concession_total_ninety" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concession_total_ninety'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionninety_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionninety_installment_two" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionninety_installment_three" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionninety_installment_four" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionninety_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionninety_installment_six" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessionninety_installment_six'); ?></span>
                                </div>
                                	</div>
                                </div>

                                <h4>Concession with 95%</h4>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Total Concession With 95%</label><small class="req"> *</small>
                                    <input autofocus="" name="concession_total_ninefive" placeholder="" type="number" class="form-control"/>
                                    <span class="text-danger"><?php echo form_error('concession_total_ninefive'); ?></span>
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 1</label>
                                    <input autofocus="" name="concessionninefive_installment_one" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_one'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 2</label>
                                    <input autofocus="" name="concessionninefive_installment_two" placeholder="" type="number" class="form-control"   />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_two'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 3</label>
                                    <input autofocus="" name="concessionninefive_installment_three" placeholder="" type="number" class="form-control"   />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_three'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 4</label>
                                    <input autofocus="" name="concessionninefive_installment_four" placeholder="" type="number" class="form-control"   />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_four'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 5</label>
                                    <input autofocus="" name="concessionninefive_installment_five" placeholder="" type="number" class="form-control" />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_five'); ?></span>
                                </div>
                                	</div>
                                	<div class="col-sm-2">
                                		<div class="form-group">
                                    <label for="exampleInputEmail1">Installment 6</label>
                                    <input autofocus="" name="concessionninefive_installment_six" placeholder="" type="number" class="form-control"  />
                                    <span class="text-danger"><?php echo form_error('concessionninefive_installment_six'); ?></span>
                                </div>
                                	</div>
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
            <!--/.col (left) -->
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