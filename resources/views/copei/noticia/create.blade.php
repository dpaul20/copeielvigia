@extends('layout.app')
@section('title')
	Crear noticia
@endsection
@section('content')
	{!! Form::open(['url' => '/noticia/nota', 'method' => 'POST']) !!}
		{!! Form::label('', 'Crear nota', ['class'=>'awesome']) !!}
		@include('copei.noticia._form')
		<div class="btn-group pull-right">
	        {!! Form::submit("Registrar", ['class' => 'btn btn-success']) !!}
	    </div>
	{!! Form::close() !!}
@endsection