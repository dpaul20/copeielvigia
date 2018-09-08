<!DOCTYPE html>
<html>
<head>
	<title>@yield('title', 'COPEI')</title>
	<link rel="stylesheet" href="/css/app.css" />
</head>
<body>
	<div class="container-fluid">
		<header>{{-- header --}}
			<div class="row"> 
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-8">
							<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
						</div>
						<div class="col-md-4">
							 <img src="#">
							 <img src="#">
							 <img src="#">
						</div>

					</div>
				</div>
			</div> 
		</header>{{-- fin header  --}}
		<div class="row">{{-- Navbar --}}
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark">
				  	<a class="navbar-brand" href="/">{{ config('app.name') }}</a>
				  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="navbar-toggler-icon"></span>
					</button> 
				  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
							<li class="nav-item">
						        <a class="nav-link" href="/copei/nosotros">Nosotros</a>
							</li>
							<li class="nav-item dropdown">
						        <a class="nav-link dropdown-toggle" href="/noticias" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						          Noticias
						        </a>
						        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
							        <a class="dropdown-item" href="/noticias">Ver noticia</a>
							        @if (Auth::check())
							          	<a class="dropdown-item" href="/noticia/create">Nueva noticia</a>
							          	<a class="dropdown-item" href="/noticia/lista">Ver lista de noticias</a>
						          	@endif
					        	</div>
						    </li>
							<li class="nav-item">
						        <a class="nav-link" href="/contactos">Contactanos</a>
							</li>
							<li class="nav-item">
						        <a class="nav-link" href="/descargas">Descargas</a>
							</li>
							<li class="nav-item">
						        <a class="nav-link" href="/jdc">Jdc</a>
							</li>
					    </ul>
					    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Inciar sesión') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Registrar') }}</a>
                            </li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Cerrar sesión') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
				  	</div>

				</nav> 

			</div>
		</div>{{-- fin navbar --}}
		
    	<div class="row">
      		<div class="col-md-8">
        		@yield('content')
      		</div>
      		<div class="col-md-4">
        		<h2>twitter</h2>
      		</div>
   		</div>	{{-- fin row --}}

   		@yield('formulario')

		<div class="row"> {{-- footer --}}
			<div class="col-md-12">
				<footer>
					<address>
						<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br /> San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr> (123) 456-7890
					</address>
				
					{{ config('app.name') }}. Todos los derechos reservados
				</footer>
			</div>
		</div> {{-- fin row footer --}}
	</div> {{-- Fin de container-fluid --}}
	<script src="/js/app.js"></script>
	@yield('scripts')
</body>
</html>
