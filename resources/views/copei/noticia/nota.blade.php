@extends('layout.app');
@section('title')
	{{ $noticia->titulo }}
@endsection
@section('content')
	<h2>{{ $noticia->titulo }}</h2>
	<p>{{ $noticia->cuerpo }}</p>
@endsection