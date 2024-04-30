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
                        Book Barcode List
                    	</h3>
                    	<div class="pull-right">
                           

                        </div><!-- /.pull-right -->
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="mailbox-controls">
                            <!-- Check all button -->

                        </div>
                        <div class="mailbox-messages table-responsive">
                            <div class="col-md-6">
                        

                            <form method="post" action="" id="bar_pri">
                                <label>Book Name</label>
                                <input type="" class="form-control" name="bname">

                                <label>Book Number</label>
                                <input type="" class="form-control" name="bnum">

                               <br>
                                <input type="submit" class="btn btn-primary btn-sm" name="create" value="search">
                            </form>

                            </div>
                            <div class="col-md-6">
                                
                            </div>

                            <div class="download_label" id="bar_pri"><?php echo $this->lang->line('book_list'); ?></div>
                            <div class="row" id="bar_pri">
                                <table  class="table table-striped table-bordered table-hover example" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('book_title'); ?></th>
                                        <th><?php echo $this->lang->line('book_no'); ?></th>
                                      
                                        <th><?php echo $this->lang->line('qty'); ?></th>
                                        <th><?php echo $this->lang->line('available'); ?></th>
                                        <th><?php echo $this->lang->line('bookprice'); ?></th>
                                        <th><?php echo $this->lang->line('postdate'); ?></th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $count = 1;
                                    if ((!empty($_SESSION['book_name']))||(!empty($_SESSION['book_number']))) {

                                        $bname=$_SESSION['book_name'];
                                        $bnum=$_SESSION['book_number'];

                                       // print_r($bnum);exit();
                                    $listbook=$this->db->query("select * from books where book_title='$bname' and book_no='$bnum' limit 1")->result();
                                    // print_r($listbook);exit();
                                        foreach ($listbook as $book) {
                                            //print_r($book);exit();
                                           $barcode_image= $book->barcode_image;
                                            ?>
                                            <tr>
                                                <td class="mailbox-name">
                                                    <a href="#" data-toggle="popover" class="detail_popover"><?php echo $book->book_title ?></a>
                                                   
                                                </td>
                                                <td class="mailbox-name"> <?php echo $book->book_no ?></td>
                                               
                                                
                                                <td class="mailbox-name"> 
                                                    <?php echo $book->qty ?></td>

                                                <td class="mailbox-name">
                                                     <?php echo ($book->qty - $book->total_issue); ?>

                                                 </td>
                                                  <td class="mailbox-name"> <?php echo $book->perunitcost ?></td>
                                               
                                                <td class="mailbox-name"> <?php
                                                echo $book->postdate;
                                                    ?></td>
                                             
                                            </tr>
                                            <?php
                                            $count++;
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                            </div>
                          <!-- /.table -->
                        </div><!-- /.mail-box-messages -->
                    </div><!-- /.box-body -->
                    <div class="box-footer" >
                        <div class="mailbox-controls">
                            <p><b>Enter Number Of Row</b></p>
                           <form action="" method="post" id="bar_pri">
                           	<input type="hidden" value="<?=$barcode_image;?>" name="barcode_image">
                           	<label>No. of row</label>
                           	<input type="number" name="bar_num" value="10">
                           	<br>

                           	<input type="submit"  name="barcode" value="create" class="btn btn-primary btn-sm">
                            <p class="text-danger">NOTE : Enter number of row ,every row contain 4 barcode image</p>
                           	<?php
                           	if(!empty($_SESSION['barcode_image'])){
                           		?>
                           	
                           	<!-- <button type="button" class="btn btn-danger btn-sm" onclick="printPageArea();">print</button> -->
                           <!-- 	<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#exampleModal">
							 Print Barcode
							</button> -->
                           <!--  <a href="print_barcode" class="btn btn-danger">print barcode</a> -->
                           <?php
                            }

                           ?>
                           </form>
                           <br>
                           <br>
                          <!--  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Print Barcode</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body">
                            <div class="" id="barco">
                            	<div class="row">
                            		 <?php
                                 
                                    if ((!empty($_SESSION['barcode_image']))||(!empty($_SESSION['bar_num']))) {

                                        $barcode_image=$_SESSION['barcode_image'];
                                        $bar_num=$_SESSION['bar_num'];


                                        for ($i=0; $i <$bar_num ; $i++) { 
                                        ?>

                                        <div class="col-md-3">
                                        	<div class="card p-2">
                                        		<img src="../../<?= $barcode_image;?>" class="img-fluid" style="width: 3cm;margin: 10px;">
                                        	</div>
                                        	
                                        </div>

                                        <?php
                                        }


                                    }
                                        ?>
                                        <div class="box-right">
                                        	
                                        </div>
                            	</div>
                            </div>
                             </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="printPageArea();">print</button>
      </div>
    </div>
  </div>
</div> -->
                        </div>
                    </div>
                </div>
            </div><!--/.col (left) -->
            <!-- right column -->
        </div>
        <div class="row">
            <!-- left column -->
            <!-- right column -->
            <div class="col-md-12">
                <!-- Horizontal Form -->
                <!-- general form elements disabled -->
            </div><!--/.col (right) -->
        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

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