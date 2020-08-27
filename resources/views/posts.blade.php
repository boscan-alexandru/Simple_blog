

<div class="title m-b-md">
    Laravel Posts
</div>
<div  class="d-flex" style="flex-wrap: wrap;">
    @foreach($posts as $post)
    <div class="card m-4" style="width:200px">
        <img class="card-img-top" src="{{ $post->image_url}}" alt="Card image" style="width:200px;">
        <div class="card-body">
            <h4 class="card-title">{{ $post->title}} <span style="padding: 5px 10px; color: red; border: 1px solid red; border-radius: 25px;font-size: 14px;">{{ $post->status }}</span></h4>
            <p class="card-text">{{ $post->description}} ...</p>
            <a href="#" class="btn btn-primary">Read More</a>
        </div>
    </div>
    @endforeach
</div>
<div class="row">
    {!! $posts->links() !!}
</div>
