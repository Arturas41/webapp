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


                        <a class="dropdown-item" href="/c_study/materials">Study materials</a>
                        <a class="dropdown-item" href="/c_study/materials/create">Create study material</a>
                        <a class="dropdown-item" href="/c_forum/threads">Forum threads</a>

                        @if(auth()->check())
                            <a class="dropdown-item" href="/c_forum/threads?by={{ auth()->user()->name }}">My Threads</a>
                        @endif

                        <a class="dropdown-item" href="/c_forum/threads?popular=1">Popular Threads</a>
                        <a class="dropdown-item" href="/c_forum/threads/create">New forum thread</a>

                    </div>

                </li>
            </ul>

        </div>
    </div>
</nav>
