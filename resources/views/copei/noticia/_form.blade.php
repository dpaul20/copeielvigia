@include('copei._form_validador')
<div class="form-group"> {{-- Titulo --}}
	<label for="">Título</label>
	{{--<input name="titulo" value="{{ old('titulo', isset($noticia) ? $noticia->titulo : '')  }}" type="text" class="form-control" id="" placeholder="Título">--}}
	{!! Form::text('titulo', null, ['class'=>'form-control', 'placeholder'=>'Titulo']) !!}
</div>{{-- Fin Titulo --}}

<div class="form-group"> {{-- Cuerpo --}}
	<label for="">Nota</label>
	{{-- <textarea name="cuerpo" type="text" class="form-control" id="" placeholder="Escriba la descripción">{{ old('cuerpo',isset($noticia) ? $noticia->cuerpo : '')  }}</textarea> --}}
	{!! Form::textarea('cuerpo', null, ['class'=>'form-control', 'placeholder'=>'Escriba la descripción']) !!}
</div>{{-- Fin cuerpo --}}

<div class="input-group mb-3">{{-- Categoria --}}
  	<div class="input-group-prepend">
    	<label class="input-group-text" for="inputGroupSelect01">Categoría</label>
  	</div>
  	{!! Form::select('group_id', $groups, null, ['class'=>'custom-select']) !!}
</div>{{-- Fin Categoria --}}

<div class="custom-control custom-checkbox">{{-- Checkbox Importan --}}
		{!! Form::checkbox('importan', '1') !!}
		Es importante
</div>{{-- Fin Checkbox importan --}}
	