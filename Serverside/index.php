<!DOCTYPE html>
<html lang="es">
<title>Consulta de Clientes</title>
<head>

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">



<script type="text/javascript" language="javascript" >
$(document).ready(function() {
var dataTable = $('#consulta').DataTable( {
"processing": true,
"serverSide": true,
"ajax":{
url :"consulta.php", // json datasource
type: "post",  // method  , by default get
error: function(){  // error handling
$(".employee-grid-error").html("");
/*
$("#employee-grid").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');*/
$("#employee-grid_processing").css("display","none");

}
}
} );
} );
</script>



</head>
<body>

<div class="container-fluid">
<div class="row">
<div class="col-md-12">
	

<div class="panel panel-default">
	<!-- Default panel contents -->
	<div class="panel-heading">Consulta de Clientes </div>
	<div class="panel-body">

		<div class="table-responsive">

		<table id="consulta" class="table table-bordered table-condensed">
		<thead>
		<tr class="success">
		<th>Código</th>
		<th>Ruc</th>
		<th>Descripción</th>
		</tr>
		</thead>
		</table>

		</div>

	</div>

	
</div>



</div>
</div>
</div>


</body>
</html>
