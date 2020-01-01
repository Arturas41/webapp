@extends('layouts/app')

@section('content')
    <div>
        @if ($posts->count() > 0)
            @foreach ($posts as $post)
                @include('angleslash.snippets.post', ['angleslash.post' => $post])
            @endforeach
        @else
            <p>Nobody has submmitted a post yet, looks like you will be the first!</p>
        @endif
    </div>
@endsection
