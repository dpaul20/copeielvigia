@extends('layout.app')
@section('title')
	Editar noticia {{ $noticia->titulo }}
@endsection
@section('content')
	{!! Form::model($noticia, ['method' => 'PATCH', 'url' => "/noticia/nota/{$noticia->id}", 'class' => 'form-horizontal']) !!}
		<legend>Editar Nota</legend>
	    @include('copei.noticia._form')
	    <div class="btn-group pull-right">
	        {!! Form::reset("Limpiar", ['class' => 'btn btn-warning']) !!}
	        {!! Form::submit("Actualizar", ['class' => 'btn btn-success']) !!}
	    </div>
	{!! Form::close() !!}
@endsection