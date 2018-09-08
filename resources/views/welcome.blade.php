@extends('layout.app')
@section('title')
	{{ config('app.name') }}
@endsection
@section('content')
	<div class="row">
		@foreach ($noticias as $noticia)
			<div class="col-md-6">
				<div class="card-group">
					<div class="card">
					    <img class="card-img-top" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" alt="Card image cap">
					    <div class="card-body">
					      	<h5 class="card-title">{{ $noticia->titulo }}</h5>
					     	<p class="card-text">{{ $noticia->cuerpo }} <a class="btn" href="/noticia/nota/{{ $noticia->id }}"> Leer más...</a></p>
					    </div>
					    <div class="card-footer">
					      	<small class="text-muted">Fecha: {{ $noticia->created_at }}</small>
					    </div>
					 </div>
				</div>
			</div>
		@endforeach
	</div>
@endsection {{-- fin content --}}

@section('formulario')
	<div class="row">
		<div class="col-md-12">
			<form action="/" method="POST" role="form" class="form-inline">
				{{ csrf_field() }}
				@include('copei._form_validador')
				<div class="form-group">
					<label for="">
						nombre
					</label>
					<input type="text" class="form-control form-control-sm" id="" name="nombre" value="{{ old('nombre') }}" />
				</div>
				
				<div class="form-group">
					<label for="apellido">
						apellido
					</label>
					<input type="text" class="form-control form-control-sm" id="apellido" name="apellido" value="{{ old('apellido') }}" />
				</div>
				
				<div class="form-group">
					<label for="cedula">
						cedula
					</label>
					<input type="text" class="form-control form-control-sm" id="cedula" name="cedula" value="{{ old('cedula') }}" />
				</div>
					
				<div class="form-group">
					<label for="celular">
						celular
					</label>
					<input type="text" class="form-control form-control-sm" id="celular" name="celular" value="{{ old('celular') }}" />
				</div>
				<div class="form-group">

					<label for="correo">
						Correo
					</label>
					<input type="email" class="form-control form-control-sm" id="correo" name="correo" value="{{ old('correo') }}" />
				</div>
				<div class="form-group">
					<div class="form-group">
					<label for="parroquia">
						parroquia
					</label>
					<input type="text" class="form-control form-control-sm" id="parroquia" name="parroquia" value="{{ old('parroquia') }}" />
				</div>
				<button type="submit" class="btn btn-primary">
					Participar
				</button>
			</form>
		</div>
	</div {{-- fin row form --}}	
@endsection
	
