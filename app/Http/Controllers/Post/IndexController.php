<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Dflydev\DotAccessData\Data;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke()
    {
        $posts = Post::paginate(6);
        $randomPost = Post::get()->random(4);
        $likedPosts = Post::withCount('likedUsers')->orderBy('liked_users_count', 'DESC')->get()->take(7);
//        dd($likedPosts);
        return view('post.index', compact('posts', 'randomPost', 'likedPosts'));
    }
}
