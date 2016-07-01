<?php
include('../configuracion.php');

$conn = mysqli_connect(SERVERBD,USERBD,PASSBD, BD) or die("Connection failed: " . mysqli_connect_error());

/* Database connection end */


// storing  request (ie, get/post) global array to a variable  
$requestData= $_REQUEST;


$columns = array( 
// datatable column index  => database column name
	0 =>'idclientes', 
	1 => 'ruc',
	2=> 'razon_social'
);

// getting total number records without any search
$sql = "SELECT idclientes,ruc,razon_social";
$sql.=" FROM clientes";
$query=mysqli_query($conn, $sql) or die("consulta.php: error");
$totalData = mysqli_num_rows($query);
$totalFiltered = $totalData;  // when there is no search parameter then total number rows = total number filtered rows.


$sql = "SELECT idclientes,ruc,razon_social";
$sql.=" FROM clientes WHERE 1=1";
if( !empty($requestData['search']['value']) ) {   // if there is a search parameter, $requestData['search']['value'] contains search parameter
	$sql.=" AND ( idclientes LIKE '".$requestData['search']['value']."%' ";    
	$sql.=" OR ruc LIKE '".$requestData['search']['value']."%' ";

	$sql.=" OR razon_social LIKE '".$requestData['search']['value']."%' )";
}
$query=mysqli_query($conn, $sql) or die("consulta.php: error");
$totalFiltered = mysqli_num_rows($query); // when there is a search parameter then we have to modify total number filtered rows as per search result. 
$sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
/* $requestData['order'][0]['column'] contains colmun index, $requestData['order'][0]['dir'] contains order such as asc/desc  */	
$query=mysqli_query($conn, $sql) or die("consulta.php: error");

$data = array();
while( $row=mysqli_fetch_array($query) ) {  // preparing an array
	$nestedData=array(); 

	$nestedData[] = $row["idclientes"];
	$nestedData[] = $row["ruc"];
	$nestedData[] = $row["razon_social"];
	
	$data[] = $nestedData;
}



$json_data = array(
			"draw"            => intval( $requestData['draw'] ),   // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw. 
			"recordsTotal"    => intval( $totalData ),  // total number of records
			"recordsFiltered" => intval( $totalFiltered ), // total number of records after searching, if there is no searching then totalFiltered = totalData
			"data"            => $data   // total data array
			);

echo json_encode($json_data);  // send data as json format

?>
