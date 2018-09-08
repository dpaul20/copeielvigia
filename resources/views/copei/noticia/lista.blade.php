@extends('layout.app')
@section('title')
	Lista de Noticias
@endsection

@section('content')
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
					<h5 class="card-header">
						Categorías
					</h5>
					<div class="list-group">
						@foreach ($groups as $group)
							<a href="/groups/{{ $group->id }}/lista" class="list-group-item list-group-item-action">{{ $group->name }}</a>
						@endforeach
					</div>
				</div>
				<div class="col-md-8">
					<table class="table table-hover table-sm">
						<thead>
							<tr>
								<th>
									Nota
								</th>
								<th>
									Categoria
								</th>
								<th>
									Editar
								</th>
								<th>
									Eliminar
								</th>
							</tr>
						</thead>
						<tbody>
							@foreach ($noticias as $noticia)
								<tr>
									<td>
										
										{{ $noticia->titulo }}
										
									</td>
									<td>	
										{{ $noticia->group->name }}
									</td>
									<td>
										<a href="/noticia/nota/{{ $noticia->id }}/edit" class="btn btn-warning btn-sm" role="button">Editar</a>
									</td>
									<td>
										<form action="/noticia/nota/{{ $noticia->id }}" method="POST">
							      			{{ method_field('DELETE') }}
											{{ csrf_field() }}
											<button type="button" class="btn btn-danger btn-sm btn-delete">Eliminar</button>
				      					</form>				      
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection