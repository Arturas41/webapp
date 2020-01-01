@extends('layouts/app')

@section('content')

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form method="POST" action='/learn_topic'>
                {{csrf_field()}}
                <div class="form-group">
                    Title: <input type="text" name="title"><br>
                    Url: <input type="text" name="url"><br>
                    Note: <textarea name="note" id="note" class="form-control" rows="5"></textarea>
                </div>
                <button type="submit" class="btn btn-default">Post</button>
            </form>
        </div>
    </div>

@endsection
