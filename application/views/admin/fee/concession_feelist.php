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
            <?php if ($this->rbac->hasPrivilege('concessionfeelist', 'can_add')) { ?>
                <a href="concessionfee" class="btn btn-primary btn-sm">add fee</a>
            <?php } ?>
            <div class="col-md-12">

                <!-- general form elements -->
                <div class="box box-primary" id="hroom">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">Concession fee list</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <div class="pull-right">
                            </div><!-- /.pull-right -->
                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="download_label">Concession Fee list</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>SNo</th>
                                        <th>Class</th>
                                        <th>Total fees 18% GST</th>
                                        <th>Concession 5%</th>
                                        <th>Concession 10%</th>
                                        <th>Concession 20%</th>
                                        <th>Concession 30%</th>
                                        <th>Concession 40%</th>
                                        <th>Concession 50%</th>
                                        <th>Concession 75%</th>
                                        <th>Concession 85%</th>
                                        <th>Concession 90%</th>
                                        <th>Concession 95%</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $sl = 1;
                                        foreach ($feedata as $feedata) {
                                            ?>
                                            <tr>
                                               <td class="mailbox-name"> <?php echo $sl++; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_class; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_fee; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_five; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_ten; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_twenty; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_thirty; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_fourty; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_fifty; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_sevenfive; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_eightfive; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_ninety; ?></td>
                                               <td class="mailbox-name"> <?php echo $feedata->concession_total_ninefive; ?></td>
                                                
                                                 
                                                
                                                <td class="" style="display: flex;">
                                                     <a data-placement="left" title="view" data-toggle="tooltip" href="<?php echo base_url(); ?>admin/concessionfeeview/<?php echo $feedata->id ?>"><i class="fa fa-eye"></i></a>

                                                   <?php if ($this->rbac->hasPrivilege('fee', 'can_delete')) { ?>
                                                        <a data-placement="left" href="<?php echo base_url(); ?>admin/concessionfee/delete/<?php echo $feedata->id ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('<?php echo $this->lang->line('delete_confirm') ?>');">
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