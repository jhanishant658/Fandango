<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
        <style>
            .footer {
                background-color: #0a0a0a;
                color: #b3b3b3;
                padding: 60px 0 30px;
/*                margin-top: 60px;*/
                border-top: 1px solid rgba(255, 255, 255, 0.1);
            }

            .footer-container {
                max-width: 1280px;
                margin: 0 auto;
                padding: 0 20px;
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 40px;
            }

            .footer-column {
                display: flex;
                flex-direction: column;
            }

            .footer-logo {
                margin-bottom: 20px;
            }

            .footer-logo img {
                height: 50px;
            }

            .footer-description {
                margin-bottom: 25px;
                line-height: 1.6;
                color: #b3b3b3;
            }

            .footer-title {
                color: #ffffff;
                font-size: 1.2rem;
                font-weight: 600;
                margin-bottom: 25px;
                position: relative;
                display: inline-block;
            }

            .footer-title::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: -10px;
                width: 40px;
                height: 3px;
                background-color: #e50914;
                border-radius: 2px;
            }

            .footer-links {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .footer-link {
                color: #b3b3b3;
                text-decoration: none;
                transition: all 0.3s ease;
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .footer-link:hover {
                color: #e50914;
                transform: translateX(5px);
            }

            .footer-link i {
                font-size: 16px;
                width: 20px;
                text-align: center;
            }

            .social-links {
                display: flex;
                gap: 15px;
                margin-top: 25px;
            }

            .social-link-facebook,.social-link-instagram,.social-link-twitter,.social-link-twitter,.social-link-youtube {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 40px;
                height: 40px;
                background-color: rgba(255, 255, 255, 0.1);
                border-radius: 50%;
                color: #ffffff;
                transition: all 0.3s ease;
                text-decoration: none;
            }

            .social-link-facebook:hover {
                background-color: #1877f2;
                transform: translateY(-5px);
                color: #ffffff;
                text-decoration: none;
            }
            
            .social-link-instagram:hover {
                background-color: #e4405f;
                transform: translateY(-5px);
                color: #ffffff;
                text-decoration: none;
            }
            
            .social-link-twitter:hover {
                background-color: #1da1f2;
                transform: translateY(-5px);
                color: #ffffff;
                text-decoration: none;
            }
            
            .social-link-youtube:hover {
                background-color: #FF0000;
                transform: translateY(-5px);
                color: #ffffff;
                text-decoration: none;
            }

            .map-container {
                width: 100%;
                height: 200px;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            }

            .map-container iframe {
                width: 100%;
                height: 100%;
                border: none;
            }

            .copyright {
                text-align: center;
                padding-top: 30px;
                margin-top: 40px;
                border-top: 1px solid rgba(255, 255, 255, 0.1);
                color: #b3b3b3;
                font-size: 0.9rem;
            }

            .copyright a {
                color: #e50914;
                text-decoration: none;
            }

            @media (max-width: 768px) {
                .footer {
                    padding: 40px 0 20px;
                }
                
                .footer-container {
                    gap: 30px;
                }
            }
        </style>
    </head>
    <body>
        <footer class="footer">
            <div class="footer-container">
                <div class="footer-column">
                    <div class="footer-logo">
                        <img src="img/Fandango.svg.png" alt="Fandango Cinema">
                    </div>
                    <p class="footer-description">
                        Fandango - Hệ thống rạp chiếu phim hiện đại bậc nhất Việt Nam. 
                        Trải nghiệm điện ảnh đỉnh cao với công nghệ hình ảnh và âm thanh tuyệt hảo.
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-link-facebook" aria-label="Facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-link-twitter" aria-label="Twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-link-instagram" aria-label="Instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="social-link-youtube" aria-label="YouTube">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3 class="footer-title">Liên kết nhanh</h3>
                    <div class="footer-links">
                        <a href="/Project_PRJ301/Home" class="footer-link">
                            <i class="fas fa-home"></i>
                            <span>Trang chủ</span>
                        </a>
                        <a href="#" class="footer-link">
                            <i class="fas fa-film"></i>
                            <span>Mua vé online</span>
                        </a>
                        <a href="News" class="footer-link">
                            <i class="fas fa-newspaper"></i>
                            <span>Tin tức & Khuyến mãi</span>
                        </a>
                        <a href="#" class="footer-link">
                            <i class="fas fa-star"></i>
                            <span>Thành viên thân thiết</span>
                        </a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3 class="footer-title">Liên hệ</h3>
                    <div class="footer-links">
                        <a href="mailto:dqh02010505@gmail.com" class="footer-link">
                            <i class="fas fa-envelope"></i>
                            <span>dqh02010505@gmail.com</span>
                        </a>
                        <a href="tel:0902676273" class="footer-link">
                            <i class="fas fa-phone"></i>
                            <span>0902676273</span>
                        </a>
                        <a href="#" class="footer-link">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Fandango</span>
                        </a>
                        <a href="#" class="footer-link">
                            <i class="fas fa-clock"></i>
                            <span>Giờ mở cửa: 8:00 - 22:00</span>
                        </a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3 class="footer-title">Vị trí</h3>
                    <div class="map-container">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354776825854!2d144.95373631531693!3d-37.81720927975195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218ceee0!2sMelbourne%20VIC%2C%20Australia!5e0!3m2!1sen!2sus!4v1626525759053!5m2!1sen!2sus"
                            allowfullscreen="" loading="lazy" title="Fandango Cinema Location">
                        </iframe>
                    </div>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2025 Fandango. All Rights Reserved. Designed with <i class="fas fa-heart" style="color: #e50914;"></i> by <a href="#">Fandango Team</a></p>
            </div>
        </footer>
    </body>
</html>

