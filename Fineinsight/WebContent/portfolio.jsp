<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html lang="UTF-8">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>(주)파인인사이트 - 더 나은 미래로 향하는 창</title>
        <meta name="description" content="UIUX디자인,기업홈페이지제작,반응형홈페이지제작,모바일어플리케이션제작">
        <meta name="author" content="(주)파인인사이트">
        <meta content="width=device-width, initial-scale=1" name="viewport">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/magnific-popup.css" rel="stylesheet">
        <link href="assets/css/newp.css" rel="styleseet">
        <link href="assets/css/style_our.css" rel="stylesheet">
        <link href="assets/css/responsive_portfolio.css" rel="stylesheet">
        <!-- 추가 -->
        <link rel="stylesheet" href="assets/css/nivo-lightbox.css">
        <link rel="stylesheet" href="assets/css/nivo_themes/default/default.css">
        
        <script src="assets/js/jquery-1.9.1.min.js"></script>
        
        <script type="text/javascript">
            jQuery(window).on('load', function () {
            	<%
            		String wow = request.getParameter("wow");
            		if(wow==null || wow.equals("")){
            			wow = "an";
            		}
            	%>
                $('.<%=wow%>').addClass("selected");
                $('.<%=wow%>').trigger("click");
                $('.<%=wow%>').trigger("focus");
            });
        </script>
    </head>

    <body style="background: white;">
        <div id="preloader">
            <div id="status"> <img alt="logo" src="assets/images/fine-logo.png"> </div>
        </div>
        <!--/.PRELOADER END-->
        <%@ include file="/include/sidebar.jsp"%>
            <div class="content-wrap" id="content-wrap">
                <!--CONTENT-->
                <!--PORTFOLIO IMAGE-->
                <div class="portfolio-image" id="pv">
                    <div class="content-right col-md-4 col-xs-12">
                        <div class="fixedmenu">
                            <div class="portfolio-logo">
                                <h1>
							<a></a>
						</h1> </div>
                            <ul class="filter-wrapper">
                                <li><a href="#" class="opc-main-bg an" data-filter="*">ALL
								WORKS</a></li>
                                <li><a href="#" class="opc-main-bg a0" data-filter=".uiux">UI/UX
								DESIGN</a></li>
                                <li><a href="#" class="opc-main-bg a1" data-filter=".classy">ClASSY
								DESIGN</a></li>
                                <li><a href="#" class="opc-main-bg a2" data-filter=".develope">DEVELOPEMENT</a></li>
                                <li><a href="#" class="opc-main-bg a3" data-filter=".media1">MEDIA
								PLANNING</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="noto content-right1 col-md-8 col-xs-12" id="portfolio">
                        <div class="iso-box-wrapper">
                            <div class="uiux element igrid iso-box col-lg-12 col-md-12 col-xs-12">
                                <a href="assets/images/np01.jpg" data-lightbox-gallery="portfolio-gallery"> <img alt="image" src="assets/images/np01.jpg" class="trueimage">
                                    <div class="decription-wrap">
                                        <div class="image-bg">
                                            <p class="desc">UX Programming</p>
                                            <p class="desc2">#FEATURE STORY #NEW CONSTRUCTION</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="uiux element igrid iso-box col-lg-6 col-md-6 col-xs-6">
                                <a href="assets/images/np02.jpg" data-lightbox-gallery="portfolio-gallery"> <img alt="image" src="assets/images/np02.jpg" class="trueimage">
                                    <div class="decription-wrap">
                                        <div class="image-bg">
                                            <p class="desc">UX Programming</p>
                                            <p class="desc2">#FEATURE STORY #NEW CONSTRUCTION</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="uiux element igrid iso-box col-lg-6 col-md-6 col-xs-6">
                                <a href="assets/images/np03.jpg" data-lightbox-gallery="portfolio-gallery2"> <img alt="image" src="assets/images/np03.jpg" class="trueimage">
                                    <div class="decription-wrap">
                                        <div class="image-bg">
                                            <p class="desc">UX Programming</p>
                                            <p class="desc2">#FEATURE STORY #NEW CONSTRUCTION</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="uiux element igrid iso-box col-lg-4 col-md-4 col-xs-4">
                                <a href="assets/images/np04.jpg" data-lightbox-gallery="portfolio-gallery2"> <img alt="image" src="assets/images/np04.jpg" class="trueimage">
                                    <div class="decription-wrap">
                                        <div class="image-bg">
                                            <p class="descT">leaflet</p>
                                            <p class="descT2">#FEATURE STORY #NEW CONSTRUCTION</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="uiux element igrid iso-box col-lg-8 col-md-8 col-xs-8">
                                <a href="assets/images/np05.jpg" data-lightbox-gallery="portfolio-gallery2"> <img alt="image" src="assets/images/np05.jpg" class="trueimage">
                                    <div class="decription-wrap">
                                        <div class="image-bg">
                                            <p class="desc">leaflet</p>
                                            <p class="desc2">#FEATURE STORY #NEW CONSTRUCTION</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- 히든플레이스 -->
                            <div hidden="hidden">
                                <a href="assets/images/np02.jpg" data-lightbox-gallery="portfolio-gallery"></a>
                            </div>
                        </div>
                        <!--/.PORTFOLIO IMAGE END-->
                    </div>
                </div>
            </div>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/sidebar_ourp.js"></script>
            <script src="assets/js/scrollreveal.min.js"></script>
            <!-- 추가 -->
            <script src="assets/js/isotope.js"></script>
            <script src="assets/js/imagesloaded.min.js"></script>
            <script src="assets/js/nivo-lightbox.min.js"></script>
            <script src="assets/js/custom_ourp.js"></script>
    </body>

    </html>