<div class="row">
	<div class="col-md-12">
		<img class="img-top" src="<?= constant('PUBLIC_URL') ?>images/logo-desis2.png" alt="">
	</div>

	<div class="offset-md-1 col-md-4 content-desis">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1>Formulario de votación</h1>
			</div>

			<div class="col-md-12">
				<label for="nombres" class="title">Nombre y Apellido</label>
				<input type="text" id="nombres" class="form-control">
			</div>
			<br>

			<div class="col-md-12">
				<label for="alias" class="title">Alias</label>
				<input type="text" id="alias" class="form-control">
			</div>
			<br>

			<div class="col-md-12">
				<label for="rut" class="title">RUT</label>
				<input type="text" id="rut" class="form-control" placeholder="Formato : 11.111.111-1 (con puntos y guión)">
			</div>
			<br>

			<div class="col-md-12">
				<label for="email" class="title">Email</label>
				<input type="text" id="email" class="form-control">
			</div>
			<br>

			<div class="col-md-12">
				<label for="region" class="title">Region</label>
				<select name="" id="region" class="select2">
					<option value="">Seleccione ...</option>
					<?php foreach ($this->data['regiones'] as $region): ?>
						<option value="<?=$region['i_idregion']?>"><?=$region['v_nombre']?></option>
					<?php endforeach ?>
				</select>
			</div>
			<br>

			<div class="col-md-12">
				<label for="comuna" class="title">Comuna</label>
				<select name="" id="comuna" class="select2">
					<option value="">Seleccione ...</option>
				</select>
			</div>
			<br>

			<div class="col-md-12">
				<label for="candidato" class="title">Candidato</label>
				<select name="" id="candidato" class="select2">
					<option value="">Seleccione ...</option>
					<?php foreach ($this->data['candidatos'] as $candidato): ?>
						<option value="<?=$candidato['i_idcandidato']?>"><?=$candidato['v_nombres']?></option>
					<?php endforeach ?>
				</select>
			</div>
			<br>

			<div class="col-md-12">
				<label for="nosotros" class="title">Como se enteró de nosotros?</label>

				<div class="row">
					<div class="col">
						<input type="checkbox" class="btn-check" name="nosotros" id="web" value="WEB" autocomplete="off">
				  		<label class="btn btn-outline-success full-width" for="web">WEB</label>
					</div>

					<div class="col">
						<input type="checkbox" class="btn-check" name="nosotros" id="tv" value="TV" autocomplete="off">
				  		<label class="btn btn-block btn-outline-success full-width" for="tv">TV</label>
					</div>

					<div class="col">
						<input type="checkbox" class="btn-check" name="nosotros" id="rrss" value="RRSS" autocomplete="off">
				  		<label class="btn btn-block btn-outline-success full-width" for="rrss">Redes Sociales</label>
					</div>

					<div class="col">
						<input type="checkbox" class="btn-check" name="nosotros" id="amigo" value="AMIGO" autocomplete="off">
				  		<label class="btn btn-block btn-outline-success full-width" for="amigo">Amigo</label>
					</div>
				</div>

			</div>
			<br>
			<hr>

			<div class="col-md-12">
				<center>
					<div class="text-danger" id="mensaje"></div>
				</center>
				
				<button class="btn btn-desis full-width" id="votar">Votar</button>
			</div>

		</div>
	</div>

	<div class="offset-md-1 col-md-5 content-desis">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1>Votos</h1>
			</div>

			<div class="col-md-12 table-responsive">
				<table class="table table-hover table-striped table-bordered">
					<thead>
						
						<th>Nombres</th>
						<th>Alias</th>
						<th>Rut</th>
						<th>Donde nos vio?</th>
						<th>Creación</th>
						<th>Region</th>
						<th>Comuna</th>
						<th>Candidato</th>

					</thead>
					<tbody>
						<?php foreach ($this->data['votos'] as $voto): ?>
							
						<tr>
							<td><?=$voto['v_nombres']?></td>
							<td><?=$voto['v_alias']?></td>
							<td><?=$voto['v_rut']?></td>
							<td><?=$voto['v_nosotros']?></td>
							<td><?=$voto['t_creacion']?></td>
							<td><?=$voto['v_nombre_region']?></td>
							<td><?=$voto['v_nombre_comuna']?></td>
							<td><?=$voto['v_nombres_candidato']?></td>
						</tr>

						<?php endforeach ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>