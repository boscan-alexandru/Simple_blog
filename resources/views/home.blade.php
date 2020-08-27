@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            
            <div class="card">
                <div class="card-header">{{ __('Post Blog') }}</div>

                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                           
                        </div>
                    @endif
                    @if(Session::get('success'))
                        <img src="/img/{{ Session::get('imageName') }}" alt=""> 
                    @endif
                    <form method="post" action="{{ url('post') }}"  enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control" id="title" aria-describedby="title of the post" placeholder="Enter Post Title">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" name="description" class="form-control" id="description" placeholder="description">
                        </div>
                        <div class="form-group">
                            <label for="image">Choose Image</label>
                            <input type="file" name="image" class="image form-control" accept="image/*" style="padding-bottom: 36px; border:none;"/>
                        </div>
                        <div class="form-group">
                            <label for="status">status</label>
                            <input type="text" name="status" class="form-control" id="status" placeholder="status">
                        </div>
                        <button type="submit" class="btn btn-primary">Post</button>
                    </form>

                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
