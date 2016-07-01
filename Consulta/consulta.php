<?php 
$query   ="SELECT * FROM alumno";
$result  = $db->query($query);
 ?>

<div class="table-responsive">
	<table class="table table-bordered table-condensed" id="consulta">
		<thead>
			<tr class="success">
				<th>Código</th>
				<th>Nombres</th>
				<th>Apellidos</th>
				<th>Edad</th>
				<th>Usuario</th>
				<th>Contrasena</th>
			</tr>
		</thead>
		<tbody>
		<?php 
        while ($fila = mysqli_fetch_object($result))
         {
        ?>
        
		<tr>
		<td><?php echo $fila->codigo; ?></td>
		<td><?php echo $fila->nombres; ?></td>
		<td><?php echo $fila->apellidos; ?></td>
		<td><?php echo $fila->edad; ?></td>
		<td><?php echo $fila->usuario; ?></td>
		<td><?php echo $fila->contrasena; ?></td>

		</tr>

        <?php
        }

		 ?>
		</tbody>
	</table>
</div>




<script>
$(document).ready(function() {
    $('#consulta').DataTable();
} );
</script>