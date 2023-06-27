<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>МОЙ БЛОГ</title>
    <link rel="stylesheet" href="{{ asset('assets/vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/font-awesome/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/aos/aos.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }} ">
    <script src="{{ asset('assets/vendors/jquery/jquery.min.js') }} "></script>
    <script src="{{ asset('assets/js/loader.js') }} "></script>
</head>
<body>
<div class="edica-loader"></div>
<header class="edica-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="{{ route('main.index') }}"><img src=" {{ asset('assets/images/logo.png') }}"
                                                                          alt="Edica"></a>
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#edicaMainNav"
                    aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="edicaMainNav">
                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('main.index') }}">БЛОГ</a>
                    </li>

                    <li class="nav-item">
                        @auth()
                            <a class="nav-link" href="{{ route('personal.main.index') }}">Личный кабинет</a>
                        @endauth
                        @guest()
                            <a class="nav-link" href="{{ route('personal.main.index') }}">ВОЙТИ</a>
                        @endguest
                        <li class="nav-item">
                            <form action="{{route('logout')}}" method="post">
                                @csrf
                                <input class="btn btn-outline-primary" type="submit" value="Выйти">
                            </form>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>

@yield('content')

<section class="edica-footer-banner-section">
    <div class="container">
        <div class="footer-banner" data-aos="fade-up">
            <div class="banner-btns-wrapper">
                <button class="btn btn-success"> <a href="https://github.com/07Rinat07/project-blog-laravel8"><img src="{{  asset('assets/images/logoGithub.png') }} " alt="ios"
                                                     class="mr-2"> GITHUB (Click me)
                </button>
            </div>
            <p class="banner-text">The project with the source code is on GITHUB and if you  <br> are interested, you can see it by clicking on the links</p>
        </div>
    </div>
</section>
<footer class="edica-footer pt-0 pb-0 mb-0 mt-0 " data-aos="fade-up">
    <div class="container">
        <div class="row footer-widget-area pt-5 pb-1 mb-1 mt-5 ">
            <div class="col-md-4  pt-2 mt-lg-2">
                <a href="{{ route('main.index') }}" class="footer-brand-wrapper">
                    <img src="{{ asset('assets/images/logo.png') }} " alt="myBlog logo">
                </a>
                <p class="contact-details">ura07srr@gmail.com</p>
                <p class="contact-details">+77051260410</p>
                <nav class="footer-social-links">

                </nav>
            </div>
            <div class="col-md-2">
                <nav class="footer-nav">
                    <a href="#!" class="nav-link">Country</a>

                </nav>
            </div>
            <div class="col-md-2">
                <nav class="footer-nav">
                    <a href="#!" class="nav-link">Kazakhstan</a>


                </nav>
            </div>

            <div class="col-md-2">
                <nav class="footer-nav">
                    <a href="#!" class="nav-link">City</a>

                </nav>
            </div>

            <div class="col-md-2">
                <nav class="footer-nav">
                    <a href="#!" class="nav-link">Uralsk</a>

                </nav>
            </div>


        </div>
        <div class="footer-bottom-content pt-2 pb-0 mb-0 mt-2">
            <nav class="nav footer-bottom-nav ">
                <a href="https://github.com/07Rinat07/project-blog-laravel8">Project - BLOG - Developed - on - LARAVEL </a>
            </nav>
            <p class="mb-5">© RINAT SARMULDIN. 2023.</p>
        </div>
    </div>

</footer>
<script src="{{  asset('assets/vendors/popper.js/popper.min.js') }} "></script>
<script src="{{  asset('assets/vendors/bootstrap/dist/js/bootstrap.min.js') }} "></script>
<script src="{{  asset('assets/vendors/aos/aos.js') }} "></script>
<script src="{{  asset('assets/js/main.js') }} "></script>
<script>
    AOS.init({
        duration: 1000
    });
</script>
</body>

</html>
