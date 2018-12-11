@if ($errors->any())
	<div class="alert alert-info" role="alert">
			@foreach ($errors->all() as $error)
				{{ $error }}
			@endforeach	
	</div>
@endif