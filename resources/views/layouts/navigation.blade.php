<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{ config('app.name', 'Laravel') }}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        Dropdown <span class="caret"></span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/">Components</a>
                        <a class="dropdown-item" href="/learn_topic">Learn topic</a>
                        <a class="dropdown-item" href="/learn_topic/create">Learn topic create</a>
                        <a class="dropdown-item" href="/c_forum/threads">Forum threads</a>
                        @if(auth()->check())
                            <a class="dropdown-item" href="/c_forum/threads?by={{ auth()->user()->name }}">My Threads</a>
                        @endif
                        <a class="dropdown-item" href="/c_forum/threads/create">New forum thread</a>
                        <a class="dropdown-item" href="/angleslash">Angleslash</a>
                        <a class="dropdown-item" href="/angleslash/post/new">Angleslash create new post</a>
                        <a class="dropdown-item" href="/angleslash/sub/new">Angleslash create new sub</a>
                        <a class="dropdown-item" href="/vue_playground">Vue playground</a>
                        <a class="dropdown-item" href="/general_playground/laravel_collections">Laravel collections playground</a>
                        <a class="dropdown-item" href="/general_playground/laravel_string_helpers">laravel string helpers playground</a>
                        <a class="dropdown-item" href="/general_playground/carbon">Carbon playground</a>
                        <a class="dropdown-item" href="/general_playground/javascript_douglas_crockford">Havascript Douglas Crockford good practice playground</a>
                        <a class="dropdown-item" href="/html_parser/index">HTML parser</a>
                        <a class="dropdown-item" href="/games/games">Games</a>
                        <a class="dropdown-item" href="/games/games/create">Game create</a>
                        <a class="dropdown-item" href="/games/reviews">Game reviews list</a>

                    </div>

                </li>
            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
