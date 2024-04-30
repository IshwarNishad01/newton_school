<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();

?>

<div class="content-wrapper">

    <section class="content-header">
        <h1>
            <i class="fa fa-book"></i> <?php echo $this->lang->line('library'); ?></h1>
    </section>


    <section class="content">
        <div class="row">

            <!-- left column -->
            <div class="col-md-12">

                <!-- general form elements -->
                <div class="box box-primary" id="bklist">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">
                        Book Barcode Print
                    	</h3>
                    	<div class="pull-right">
                           <button type="button" class="btn btn-danger" onclick="window.print();">print</button>


                        </div><!-- /.pull-right -->
                    </div><!-- /.box-header -->
                   <div class="container">
                    <div class="row">
                        <table class="table table-bordered">
                  
                                                <?php
                                 
                                    if ((!empty($_SESSION['barcode_image']))||(!empty($_SESSION['bar_num']))) {

                                        $barcode_image=$_SESSION['barcode_image'];
                                        $bar_num=$_SESSION['bar_num'];


                                        for ($i=0; $i <$bar_num ; $i++) { 
                                        ?>
                                        
                                   
                                       <tr>
                                           <td><img src="../../<?= $barcode_image;?>" class="img-fluid" style="width: 3cm;margin: 10px;"></td>
                                           <td><img src="../../<?= $barcode_image;?>" class="img-fluid" style="width: 3cm;margin: 10px;"></td>
                                           <td><img src="../../<?= $barcode_image;?>" class="img-fluid" style="width: 3cm;margin: 10px;"></td>
                                           <td><img src="../../<?= $barcode_image;?>" class="img-fluid" style="width: 3cm;margin: 10px;"></td>
                                       </tr>
                                     
                       
                       
                          <?php
                        
                        }} 


                        ?>
                        
                        </table> 

                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </section>
            </div><!--/.col (left) -->
            <!-- right column -->
       
    
<script type="text/javascript">
function printPageArea(){
    var printContent = document.getElementById('barco').innerHTML;
    var originalContent = document.body.innerHTML;
    document.body.innerHTML = printContent;

    window.print();
    
    document.body.innerHTML = originalContent;
}
	


    var base_url = '<?php echo base_url() ?>';
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


    $("#print_div").click(function () {
        Popup($('#bklist').html());
    });


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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>