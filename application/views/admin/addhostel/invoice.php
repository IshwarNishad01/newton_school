 <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Invoice</title>
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
      .table-bordered td,
      .table-bordered th {
        border: 1px solid #ddd;
        padding: 10px;
        word-break: break-all;
      }

      body {
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
        padding: 0;
        font-size: 16px;
      }
      .h4-14 h4 {
        font-size: 12px;
        margin-top: 0;
        margin-bottom: 5px;
      }
      .img {
        margin-left: "auto";
        margin-top: "auto";
        height: 30px;
      }
      pre,
      p {
        /* width: 99%; */
        /* overflow: auto; */
        /* bpicklist: 1px solid #aaa; */
        padding: 0;
        margin: 0;
      }
      table {
        font-family: arial, sans-serif;
        width: 100%;
        border-collapse: collapse;
        padding: 1px;
      }
      .hm-p p {
        text-align: left;
        padding: 1px;
        padding: 5px 4px;
      }
      td,
      th {
        text-align: left;
        padding: 8px 6px;
      }
      .table-b td,
      .table-b th {
        border: 1px solid #ddd;
      }
      th {
        /* background-color: #ddd; */
      }
      .hm-p td,
      .hm-p th {
        padding: 3px 0px;
      }
      .cropped {
        float: right;
        margin-bottom: 20px;
        height: 100px; /* height of container */
        overflow: hidden;
      }
      .cropped img {
        width: 400px;
        margin: 8px 0px 0px 80px;
      }
      .main-pd-wrapper {
        box-shadow: 0 0 10px #ddd;
        background-color: #fff;
        border-radius: 10px;
        padding: 15px;
      }
      .table-bordered td,
      .table-bordered th {
        border: 1px solid #ddd;
        padding: 10px;
        font-size: 14px;
      }
      .invoice-items {
        font-size: 14px;
        border-top: 1px dashed #ddd;
      }
      .invoice-items td{
        padding: 14px 0;
       
      }
    </style>
  </head>
  <body>
   <center> <section class="main-pd-wrapper" style="width: 655px; height: 515px; margin-top: 50px">
      <div style="
                 margin: auto;
    line-height: 2.5;
    font-size: 16px;
    color: #4a4a4a;">

                
                <center><p style="font-weight: bold; color: #000; margin-top: 50px; font-size: 34px;">
                 INVOICE 
                </p></center>
                <br>
                <?php foreach($hosteldata as $idata){

                  $sl=1;
                  ?>

                <div class="row">
                  <div class="col-sm-6">
                    <p><b>Invoice No:</b> <?php echo $idata->hostel_invoice; ?></p>
                  </div>

                  <div class="col-sm-6">
                    <b>Date:</b> <?php echo $idata->date; ?>
                  </div>
                </div>

                <div class="row">
                  <b>Phone No:</b> <?php echo $idata->phone_no; ?>
                </div>

               <!--  <div class="row">
                  <div class="col-sm-6">
                    <b>Name:</b> <?php echo $idata->name; ?>
                  </div>

                  <div class="col-sm-6">
                     <b>Class:</b> <?php echo $idata->class; ?>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                     <b>Father Name</b> <?php echo $idata->father_name; ?>
                  </div>

                  <div class="col-sm-6">
                     <b>Phone No:</b> <?php echo $idata->phone_no; ?>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12">
                     <b>Total Fee:</b> <?php echo $idata->total_fee; ?>
                  </div>
                </div>
            
              
            </div> -->

                <hr style="border: 1px dashed rgb(131, 131, 131); margin: 25px auto">
              </div>
              <table style="width: 100%; table-layout: fixed">
                <thead>
                  <tr>
                    <th>SNo.</th>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Class</th>
                    <th>Total Fee</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="invoice-items">
                    <td><?php echo $sl++; ?></td>
                    <td ><?php echo $idata->name; ?></td>
                    <td><?php echo $idata->father_name; ?></td>
                    <td><?php echo $idata->class; ?></td>
                    <td><?php echo $idata->hostel_fee; ?></td>
                  </tr>

                  <tr class="invoice-items">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><b>Paid fee</b></td>
                    <td><?php echo $idata->paid_fee; ?></td>
                  </tr>
                  <tr class="invoice-items">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><b>Remaining fee</b></td>
                    <td><?php echo $idata->remaining_fee; ?></td>
                  </tr>
               
                </tbody>
              </table>


<?php } ?>
    </section>
     </center>
  </body>
</html>
