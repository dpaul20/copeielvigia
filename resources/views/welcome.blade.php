@extends('layout.app')
@section('title')
	{{ config('app.name') }}
@endsection
@section('content')

	<div class="row">
		<div class="col-md-12" id="banner">
			<img alt="banner" src="{{ asset('images/slices.jpg') }}" />
		</div>
	</div>
	<div class="row">
		@foreach ($noticias as $noticia)
			<div class="col-md-6">
				<div class="post-container">
				    <a class="post-title" href="/noticia/nota/{{ $noticia->id }}">{{ $noticia->titulo }}</a>
				    <div class="post-thumb">
				    	<img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /></div>
				    <div class="post-content">
				        <p>{{ $noticia->cuerpo }}<a class="btn" href="/noticia/nota/{{ $noticia->id }}"> Leer más...</a></p>
				    </div>
				</div>
			</div>
		@endforeach
	</div>
	<div class="row">
		<div class="col-md-12" id="paginacion">
			<span>{{ $noticias->links() }}</span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" id="formulario">
			<form action="/" method="POST" role="form" class="form-inline">
				{{ csrf_field() }}
				@include('copei._form_validador_participa')
				<div class="form-group">
					<input type="text" class="form-control form-control-sm" id="" name="nombre" placeholder="nombre" value="{{ old('nombre') }}" />
				</div>
				
				<div class="form-group">
					<input type="text" class="form-control form-control-sm" id="apellido" name="apellido" placeholder="apellido" value="{{ old('apellido') }}" />
				</div>
				
				<div class="form-group">
					<input type="text" class="form-control form-control-sm" id="cedula" name="cedula" placeholder="cédula" value="{{ old('cedula') }}" />
				</div>
					
				<div class="form-group">
					<input type="text" class="form-control form-control-sm" id="celular" name="celular" placeholder="celular" value="{{ old('celular') }}" />
				</div>
				<div class="form-group">
					<input type="email" class="form-control form-control-sm" id="correo" name="correo" placeholder="correo" value="{{ old('correo') }}" />
				</div>
				<div class="form-group">
					<input type="text" class="form-control form-control-sm" id="parroquia" name="parroquia" placeholder="parroquía" value="{{ old('parroquia') }}" />
				</div>
				<button type="submit" class="btn btn-primary">
					PARTICIPAR
				</button>
			</form>
		</div>
	</div>
@endsection {{-- fin content --}}