<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header.jsp" />

<section>
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
    <div id="wrapper">
        <div class="page1">   
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="<c:url value='/images/home_background.png'/>" width="100%" height="750">
                        <div class="carousel-caption">
                        </div>   
                    </div>
                    <div class="carousel-item">
                        <img src="<c:url value='/images/backgroun2.jpg'/>" alt="Chicago" width="100%" height="750">
                        <div class="carousel-caption">
                        </div>   
                    </div>
                    <div class="carousel-item">
                        <img src="<c:url value='/images/background3.png'/>" alt="Chicago" width="100%" height="750">
                        <div class="carousel-caption">
                        </div>   
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
        <div id="page2" class="page2">
            <div class="left2" data-aos="fade-right">
            </div>
            <div class="right2" data-aos="fade-left">
                <div class="grid">
                    <div class="grid1">
                        <img src="<c:url value='/images/icons/i4-1.png'/>" width="55px" height="55px">
                        <br>
                        <br>
                        <hr>
                        <br>
                        <h5>Music lowers stress and improves health</h5>
                    </div>
                    <div class="grid2">
                        <img src="<c:url value='/images/icons/i2-1.png'/>" width="65px" height="65px">
                        <br>
                        <br>
                        <hr>
                        <br>

                        <h5>Music enhances running performance</h5>
                    </div>
                    <div class="grid3">
                        <img src="<c:url value='/images/icons/i3-1.png'/>" width="65px" height="65px">
                        <br>
                        <br>
                        <hr>
                        <br>
                        <h5>Music strengthens learning and memory</h5>
                    </div>
                    <div class="grid4">
                        <img src="<c:url value='/images/icons/i1-1.png'/>" width="65px" height="65px">
                        <br>
                        <br>
                        <hr>
                        <br>
                        <h5>Music increases verbal intelligence</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="page3">
            <div class="nd3">
                <h2><font size="+5">Some Musical Instruments</font></h2>
                <h5>A musical instrument is a device created or adapted to make musical sounds. In principle, any object that produces sound can be considered a musical instrument?it is through purpose that the object becomes a musical instrument. A person who plays a musical instrument is known as an instrumentalist. The history of musical instruments dates to the beginnings of human culture. Early musical instruments may have been used for rituals, such as a horn to signal success on the hunt, or a drum in a religious ceremony. Cultures eventually developed composition and performance of melodies for entertainment.</h5>
            </div>
        </div>
        <div id="page4" class="page4">
            <div id="tab">	 
                <div class="secmenu">
                    <ul id="main-menu">
                        <li class="active"><a href="">All</a></li>
                        <li><a href="">Guitar</a></li>  
                        <li><a href="">Piano</a></li>
                        <li><a href="">Organ</a></li>
                        <li><a href="">Violin</a></li>
                        <li><a href="">Cello</a></li>
                    </ul>
                </div>
                <div class="tab-content" >
                    <div class="tab-content-item">
                        <div class="card">
                            <div class="card1" data-aos="fade-left" data-aos-duration="3000">
                                <div class="khoi" >
                                    <h2><img src="<c:url value='/images/icons/kisspng-cat-kitten-dog-computer-icons-cat-head-5b20bc3352b9d6.8762140415288719873389.png'/>" width="80px" height:80px)>Guitar</h2>
                                    <h6>A stringed musical instrument, with a fretted fingerboard, typically incurved sides, and six or twelve strings, played by plucking or strumming with the fingers or a plectrum.</h6>
                                </div>
                            </div>
                            <div class="card2" data-aos="fade-left" data-aos-duration="3000">
                                <div class="khoi">
                                    <h2><img src="<c:url value='/images/icons/kisspng-cat-kitten-dog-computer-icons-cat-head-5b20bc3352b9d6.8762140415288719873389.png'/>" width="80px" height:80px)>Piano</h2>
                                    <h6>a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed.</h6>
                                </div>
                            </div>
                            <div class="card3" data-aos="fade-left" data-aos-duration="3000">
                                <div class="khoi">
                                    <h2><img src="<c:url value='/images/icons/kisspng-cat-kitten-dog-computer-icons-cat-head-5b20bc3352b9d6.8762140415288719873389.png'/>" width="80px" height:80px)>Organ</h2>
                                    <h6>In music, the organ is a keyboard instrument of one or more pipe divisions or other means for producing tones, each played from its own manual, with the hands, or pedalboard, with the feet.</h6>
                                </div>
                            </div>
                            <div class="card4" data-aos="fade-right" data-aos-duration="3000">
                                <div class="khoi">
                                    <h2><img src="<c:url value='/images/icons/kisspng-cat-kitten-dog-computer-icons-cat-head-5b20bc3352b9d6.8762140415288719873389.png'/>" width="80px" height:80px)>Violin</h2>
                                    <h6>A stringed musical instrument of treble pitch, played with a horsehair bow. It has four strings and a body of characteristic rounded shape, narrowed at the middle and with two f-shaped sound holes.</h6>
                                </div>
                            </div>
                            <div class="card5" data-aos="fade-right" data-aos-duration="3000">
                                <div class="khoi">
                                    <h2><img src="<c:url value='/images/icons/kisspng-cat-kitten-dog-computer-icons-cat-head-5b20bc3352b9d6.8762140415288719873389.png'/>" width="80px" height:80px)>Cello</h2>
                                    <h6>A bass instrument of the violin family, held upright on the floor between the legs of the seated player.</h6>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap-review">
            <div class="intro-course">
                <h1>REVIEW COURSE</h1>
            </div>

            <div class="sub-review">
                <div  class="sub-review-container">
                    <div class="content-sub-review">
                        <div class="text-sub-review">
                            <div class="background-text-sub-review" style="background-image: url(https://iili.io/H2C6ecB.jpg);"></div>
                            <div class="text-overlay-review">
                                <h1>Violin Course</h1>
                                <p>They fit within the old saying, ?Give a man a fish and you?ve fed him a day, teach him to fish and you?ve fed him for life.? They intentionally do both by delivering big immediate impact exercises as well as empowering you to use the tools they teach in a flexible creative way that will suit you and your musical journey.&nbsp;&nbsp;</p>                              
                            </div>
                        </div>
                        <div class="wrap-icon-holder-review">
                            <div class="icon-holder-review">                                        
                                <span class="wrap-span-icon-holder-review">                                   
                                    <i class="fa fa-star"></i> 
                                    <i class="fa fa-star"></i>                                 
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="sub-review-container">
                    <div class="content-sub-review">
                        <div class="text-sub-review">
                            <div class="background-text-sub-review" style="background-image: url(https://iili.io/H2C6G99.jpg);"></div>
                            <div class="text-overlay-review">
                                <h1>Guitar Course</h1>
                                <p>They fit within the old saying, ?Give a man a fish and you?ve fed him a day, teach him to fish and you?ve fed him for life.? They intentionally do both by delivering big immediate impact exercises as well as empowering you to use the tools they teach in a flexible creative way that will suit you and your musical journey.&nbsp;&nbsp;</p>                                
                            </div>
                        </div>
                        <div class="wrap-icon-holder-review">
                            <div class="icon-holder-review">                                        
                                <span class="wrap-span-icon-holder-review">                                   
                                    <i class="fa fa-star"></i> 
                                    <i class="fa fa-star"></i>                                 
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="sub-review-container">
                    <div class="content-sub-review">
                        <div class="text-sub-review">
                            <div class="background-text-sub-review" style="background-image: url(https://iili.io/H2C6YG4.jpg);"></div>
                            <div class="text-overlay-review">
                                <h1>Piano Course</h1>
                                <p>They fit within the old saying, ?Give a man a fish and you?ve fed him a day, teach him to fish and you?ve fed him for life.? They intentionally do both by delivering big immediate impact exercises as well as empowering you to use the tools they teach in a flexible creative way that will suit you and your musical journey.&nbsp;&nbsp;</p>                                                                
                            </div>
                        </div>
                        <div class="wrap-icon-holder-review">
                            <div class="icon-holder-review">                                        
                                <span class="wrap-span-icon-holder-review">                                   
                                    <i class="fa fa-star"></i> 
                                    <i class="fa fa-star"></i>                                 
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div> 
</section>
<jsp:include page="/includes/footer.jsp" />
