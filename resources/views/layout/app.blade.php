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
						<div class="col-md-8" id="logo">
							<img alt="Copei" src="{{ asset('images/copei_7.png') }}" />
						</div>
						<div class="col-md-4" id="cont-social">
							 <img alt="Copei" class="social" src="{{ asset('images/social/facebook.png') }}" />
							 <img alt="Copei" class="social" src="{{ asset('images/social/twitter.png') }}" />
							 <img alt="Copei" class="social" src="{{ asset('images/social/instagram.png') }}" />
						</div>

					</div>
				</div>
			</div> 
		</header>{{-- fin header  --}}
		<div class="row"  >{{-- Navbar --}}
			<div class="col-md-12" id="navbar">
				<nav class="navbar navbar-expand-lg" id="">
				  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
					    	<li class="nav-item">
						        <a class="nav-link" href="/">{{ config('app.name') }}</a>
							</li>
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
						        <a class="nav-link" href="/jdc">Juventud Demócrata Cristiana</a>
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
		{{-- contenedor --}}
		<div class="row" id="principal">
			<div class="col-md-8">
				@yield('content')
			</div>
			<div class="col-md-4" id="twitter">
				<a class="twitter-timeline" data-lang="es" data-height="481" href="https://twitter.com/CopeiElVigia?ref_src=twsrc%5Etfw">Tweets by CopeiElVigia</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script></script>
			</div>
		</div>{{-- Fin contenedor --}}

		<div class="row"> {{-- footer --}}
			<div class="col-md-12">
				<footer>
					{{ config('app.name') }}. Copyright Copei Municipio Alberto Adriani.
				</footer>
			</div>
		</div> {{-- fin row footer --}}
	</div> {{-- Fin de container-fluid --}}
	<script src="/js/app.js"></script>
	@yield('scripts')
</body>
</html>
