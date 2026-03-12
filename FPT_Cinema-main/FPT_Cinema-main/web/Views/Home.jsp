<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FPT Cinema | Movie Experience</title>
        <link rel="stylesheet" href="Css/styleHome.css?v=2"/>
        <link rel="icon" type="image/x-icon" href="https://th.bing.com/th/id/R.e15d750fe41eb99350f0c56e6b66b653?rik=QJI66s2o67Q7jw&pid=ImgRaw&r=0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <%@include file="/components/header.jsp"%>

        <div class="film-container">
            <!-- Hero Carousel -->
            <div id="movieCarousel" class="carousel slide hero-carousel" data-ride="carousel">
                <ol class="carousel-indicators">
                    <c:forEach items="${film.accFilm}" var="film" varStatus="loop">
                        <li data-target="#movieCarousel" data-slide-to="${loop.index}" class="${loop.first ? 'active' : ''}"></li>
                        </c:forEach>
                </ol>
                <div class="carousel-inner">
                    <c:forEach items="${film.accFilm}" var="film" varStatus="loop">
                        <c:if test="${film.image_backgroundUrl != null}">
                            <div class="carousel-item ${loop.first ? 'active' : ''}">
                                <div class="carousel-media-container">
                                    <img src="http://localhost:8080/Project_PRJ301/img/${film.image_backgroundUrl}" alt="${film.title}" class="carousel-image">
<!--                                    <div class="carousel-video-container" data-trailer="${film.trailer}"></div>-->
                                </div>
                                <div class="carousel-overlay"></div>
                                <div class="carousel-content">
                                    <h1 class="carousel-title">${film.title}</h1>
                                    <a href="/Project_PRJ301/Films?movie=${film.id}" class="btn btn-danger">Xem Chi Tiết</a>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <a class="carousel-control-prev" href="#movieCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#movieCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>

            <!-- Now Showing Section -->
            <div class="section-header">
                <div class="section-indicator"></div>
                <h2 class="section-title">Phim đang chiếu</h2>
            </div>

            <div class="movies-grid">
                <c:forEach items="${film.accFilm}" var="film">
                    <c:if test="${film.status == 0}">
                        <a href="/Project_PRJ301/Films?movie=${film.id}" class="movie-link">
                            <div class="movie-card">
                                <div class="status-badge now-showing">Now Showing</div>
                                <div class="movie-poster">
                                    <img src="/Project_PRJ301/img/${film.imageUrl}" alt="${film.title}">
                                    <div class="movie-overlay"></div>
                                </div>
                                <div class="movie-details">
                                    <h3 class="movie-title">${film.title}</h3>
                                    <div class="movie-meta">
                                        <span class="movie-category">${film.category}</span>
                                        <span class="movie-year">${film.publishTime}</span>
                                    </div>
                                </div>
                                <button class="view-details">Đặt Vé</button>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>

            <!-- Coming Soon Section -->
            <div class="section-header">
                <div class="section-indicator"></div>
                <h2 class="section-title">Phim sắp chiếu</h2>
            </div>

            <div class="movies-grid">
                <c:forEach items="${film.accFilm}" var="film">
                    <c:if test="${film.status == 1}">
                        <a href="/Project_PRJ301/Films?movie=${film.id}" class="movie-link">
                            <div class="movie-card">
                                <div class="status-badge coming-soon">Coming Soon</div>
                                <div class="movie-poster">
                                    <img src="/Project_PRJ301/img/${film.imageUrl}" alt="${film.title}">
                                    <div class="movie-overlay"></div>
                                </div>
                                <div class="movie-details">
                                    <h3 class="movie-title">${film.title}</h3>
                                    <div class="movie-meta">
                                        <span class="movie-category">${film.category}</span>
                                        <span class="movie-year">${film.publishTime}</span>
                                    </div>
                                </div>
                                <button class="view-details">Chi Tiết</button>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>

        <%@include file="/components/footer.jsp"%>

        <!-- Scroll to Top Button -->
        <button id="scrollToTopBtn" class="button">
            <svg class="svgIcon" viewBox="0 0 384 512">
            <path d="M214.6 41.4c-12.5-12.5-32.8-12.5-45.3 0l-160 160c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L160 141.2V448c0 17.7 14.3 32 32 32s32-14.3 32-32V141.2L329.4 246.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3l-160-160z"></path>
            </svg>
        </button>

        <script>
            // Add scrolled class to navbar on scroll
            $(window).scroll(function () {
                if ($(this).scrollTop() > 50) {
                    $('.navbar1').css('background', 'rgba(42, 39, 39, 0.95)');
                } else {
                    $('.navbar1').css('background', 'linear-gradient(to right, #2a2727, #31302b)');
                }
            });

            // Initialize carousel with autoplay
            $('.carousel').carousel({
                interval: 5000
            });


            $(document).ready(function () {
                var btn = $("#scrollToTopBtn");

                $(window).scroll(function () {
                    if ($(this).scrollTop() > 500) {
                        btn.fadeIn();
                    } else {
                        btn.fadeOut();
                    }
                });

                btn.click(function () {
                    $("html, body").animate({scrollTop: 0}, "slow");
                    return false;
                });
            });


//            $(document).ready(function () {
//                // YouTube video preview functionality
//                $('.carousel-item').hover(
//                        function () {
//                            const videoContainer = $(this).find('.carousel-video-container');
//                            const trailerUrl = videoContainer.data('trailer');
//
//                            if (trailerUrl && !videoContainer.hasClass('loaded')) {
//                                // Extract YouTube video ID from URL
//                                const videoId = extractYouTubeId(trailerUrl);
//
//                                if (videoId) {
//                                    // Create the YouTube embed with autoplay and no controls
//                                    const embedHtml = `<iframe class="trailer-iframe" 
//                        src="https://www.youtube.com/embed/${videoId}?autoplay=1&mute=1&controls=0&showinfo=0&rel=0&iv_load_policy=3&loop=1&playlist=${videoId}"
//                        frameborder="0" allowfullscreen></iframe>`;
//
//                                    videoContainer.html(embedHtml);
//                                    videoContainer.addClass('loaded active');
//                                }
//                            } else {
//                                videoContainer.addClass('active');
//                            }
//                        },
//                        function () {
//                            const videoContainer = $(this).find('.carousel-video-container');
//                            videoContainer.removeClass('active');
//
//                            // Optionally destroy video on mouse leave to save resources
//                            // Uncomment the line below if you want videos to reload on each hover
//                            // videoContainer.empty().removeClass('loaded');
//                        }
//                );
//
//                // Function to extract YouTube video ID from various URL formats
//                function extractYouTubeId(url) {
//                    if (!url)
//                        return null;
//
//                    // Handle different YouTube URL formats
//                    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
//                    const match = url.match(regExp);
//
//                    return (match && match[2].length === 11) ? match[2] : null;
//                }
//            });
        </script>
    </body>
</html>

