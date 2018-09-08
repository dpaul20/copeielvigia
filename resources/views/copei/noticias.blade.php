@extends('layout.app')

@section('tittle')
	Noticias
@endsection

@section('content')
	<div class="row">
		@foreach ($noticias as $noticia)
			<div class="col-md-4">
				<div class="card-group">
				  	<div class="card">
				    	<img class="card-img-top" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" alt="Card image cap">
				    	<div class="card-body">
				      		<h5 class="card-title">{{ $noticia->titulo }}</h5>
				      		<p class="card-text">{{ $noticia->cuerpo }}</p>
				      		<a class="btn" href="/noticia/nota/{{ $noticia->id }}">Leer más...</a>
				    	</div>
				    	<div class="card-footer">
				      		<small class="text-muted">ID: {{ $noticia->id }}</small>  						    
				    	</div>
				  	</div>
				</div>
			</div>
		@endforeach
	</div>
@endsection
@section('scripts')
	<script type="text/javascript">
		$('.btn-delete').on('click', function(e) {
  if(confirm('¿Está seguro de borrar la nota?')){
  	$(this).parents('form:first').submit();
  }
});
	</script>
@endsection