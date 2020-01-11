@extends('layouts.app')
 
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Create A New Thread</div>
 
                    <div class="panel-body">
                        <form method="POST" action="/c_forum/threads">
                            {{ csrf_field() }}
 
                            <div class="form-group">
                                <label for="c_forum_channel_id">Choose a channel</label>
                                <select name="c_forum_channel_id" id="c_forum_channel_id" class="form-control">
                                    <option value="">Choose A Channel</option>
                                    @foreach(App\CForumChannel::all() as $channel)
                                        <option value="{{ $channel->id }}" {{ old('c_forum_channel_id') == $channel->id ? 'selected' : '' }} required>
                                            {{ $channel->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="title">Title:</label>
                                <input type="text" class="form-control" id="title" name="title" {{ old('title') }} required>
                            </div>
 
                            <div class="form-group">
                                <label for="body">Body:</label>
                                <textarea name="body" id="body" class="form-control" rows="8" required>{{ old('body') }}</textarea>
                            </div>
 
                            <button type="submit" class="btn btn-primary">Publish</button>
                            @if(count($errors))
                                <ul class="alert alert-danger">
                                    @foreach($errors->all() as $error)
                                        <li>{{$error}}</li>
                                    @endforeach
                                </ul>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
