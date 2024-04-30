<?php

defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome/index';
$route['user/resetpassword/([a-z]+)/(:any)'] = 'site/resetpassword/$1/$2';
$route['admin/resetpassword/(:any)'] = 'site/admin_resetpassword/$1';
$route['admin/unauthorized'] = 'admin/admin/unauthorized';
$route['parent/unauthorized'] = 'parent/parents/unauthorized';
$route['student/unauthorized'] = 'user/user/unauthorized';
$route['teacher/unauthorized'] = 'teacher/teacher/unauthorized';
$route['accountant/unauthorized'] = 'accountant/accountant/unauthorized';
$route['librarian/unauthorized'] = 'librarian/librarian/unauthorized';
$route['404_override'] = 'welcome/show_404';
$route['translate_uri_dashes'] = FALSE;
$route['cron/(:any)'] = 'cron/index/$1';
$route['admin/enquiries']='admin/Enquiry/test';
$route['admin/addroom'] = 'admin/Addhostel/index';
$route['admin/addroom/create'] = 'admin/Addhostel/create';
$route['admin/addhostel/delete/(:num)'] = 'admin/Addhostel/hosteldelete/$1';
$route['admin/addhostel/invoice'] = 'admin/Addhostel/hostel_invoice';
$route['admin/transport'] = 'admin/Transportform/index';
$route['admin/transport/create'] = 'admin/Transportform/create';
$route['admin/transport/delete/(:num)'] = 'admin/Transportform/transportdelete/$1';
$route['admin/subroute'] = 'admin/Subroute/index';
$route['admin/subroute/create'] = 'admin/Subroute/create';
$route['admin/fee'] = 'admin/Fee/index'; 
$route['admin/fee/create'] = 'admin/Fee/create';
$route['admin/fee/delete/(:num)'] = 'admin/Fee/feedelete/$1';
$route['admin/fee/invoice'] = 'admin/Fee/invoice';
$route['admin/hostelfee/invoice'] = 'admin/Fee/hostelinvoice';
$route['admin/hostelitemsupplier'] = 'admin/Hostelitemsupplier/index';
$route['admin/hostelitemsupplier/create'] = 'admin/Hostelitemsupplier/create';
$route['admin/hostelitemstore'] = 'admin/Hostelitemstore/index';
$route['admin/hostelitemstore/create'] = 'admin/Hostelitemstore/create';
$route['admin/hostelitemcategory'] = 'admin/Hostelitemcategory/index';
$route['admin/hostelitemcategory/create'] = 'admin/Hostelitemcategory/create';
$route['admin/hostelitemstock'] = 'admin/Hostelitemstock/index';
$route['admin/hostelitemstock/create'] = 'admin/Hostelitemstock/create';
$route['admin/hostelitemissue'] = 'admin/Hostelitemissue/index';
$route['admin/hostelitemissue/create'] = 'admin/Hostelitemissue/create';

$route['admin/concessionfee'] = 'admin/Fee/concession_fee';
$route['admin/concessionfeestore'] = 'admin/Fee/concession_fee_store';
$route['admin/concessionfeelist'] = 'admin/Fee/concession_fee_list';
$route['admin/concessionfeeview/(:num)'] = 'admin/Fee/concession_fee_view/$1';
$route['admin/concessionfee/delete/(:num)'] = 'admin/Fee/concession_feedelete/$1';

//student list
$route['admin/studentlist'] = 'Student/student_list';
$route['admin/student/delete/(:num)'] = 'Student/student_delete/$1';

$route['admin/student/allstudent'] = 'admin/Fee/allstudent_details';
$route['admin/concessionfeelisting'] = 'admin/Fee/allconcession_details';
$route['admin/student/transport-details'] = 'admin/Fee/alltransport_details';
$route['admin/student/hostel-details'] = 'admin/Fee/allhostel_details';

$route['admin/fee/academics-fee-create'] = 'admin/Fee/academics_create';
$route['admin/fee/transport-fee-create'] = 'admin/Fee/transportfee_create';
$route['admin/transport/store'] = 'admin/Fee/transportfee_store';
$route['admin/fee/hostel-fee-create'] = 'admin/Fee/hostelfee_create';
$route['admin/hostel/store'] = 'admin/Fee/hostelfee_store';

$route['admin/admin/dashboard'] = 'admin/Admin/dashboard';
$route['admin/book/print_barcode'] = 'admin/Book/pri_bar';

//======= front url rewriting==========
$route['page/(:any)'] = 'welcome/page/$1';
$route['read/(:any)'] = 'welcome/read/$1';
$route['online_admission'] = 'welcome/admission';
$route['frontend'] = 'welcome';
