@if ($errors->any())
	<div class="alert alert-info" role="alert">
		<ul>
			@foreach ($errors->all() as $error)
				<li>{{ $error }}</li>
			@endforeach
		</ul>	
	</div>
@endif