@extends('layouts/app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Study Materials</div>
 
                    <div class="panel-body">
                        @foreach($materials as $material)
                            <article>
                                <div class="level">
                                    <h4 class="flex">
                                        <a href="{{ $material->path() }}">
                                                {{ $material->title }}
                                        </a>
                                    </h4>
                                </div>
                                @foreach($material->tags as $tag)
                                    <a href="#">
                                            #{{ $tag->name }}
                                    </a>
                                @endforeach
                            </article>
                            <hr>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
