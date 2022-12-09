<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header_course.jsp" /> 
<section>

    <div id="slideshow">
        <!-- title grade -->
        <div class="wrap-grade-level">
            <h1 class="grade-level">GRADE ONE</h1>
            <h3 class="">Beginner Guitar Course</h3>
        </div>
        <!-- end title grade -->
        <div class="slideshow-item">
            <img src="<c:url value='/images/grade1-guitar.png'/>" alt="slideshow-item">
        </div>
    </div>

    <div id="content">
        <!-- course -->
        <div class="page-course">
            <div class="page-course-title">
                <h2 class="title">Course Content</h2>
            </div>
            <!-- card -->
            <c:forEach var="course" items="${courses}">
                <div class="lesson-card">
                    <div class="wrap-card-tab">
                        <div class="card-tab">
                            <div class="card-grade"><h1>${course.grade}</h1></div>
                            <div class="card-lesson"><h1>${course.leson}</h1></div>
                        </div>
                    </div>
                        <div class="card-content">
                            <div class="card-content-img">
                                <img width="250" height="141" src=<c:out value="${course.pic}"/> alt="Before You Begin...">
                            </div>
                            <div class="card-content-text">
                                <div class="content-text-header"><h3>${course.header}</h3></div>
                                <div class="content-text-description"><p>${course.des}</p></div>
                                <div class="card-content-info">
                                    <div class="card-info">
                                        <div class="content-info-stat">
                                            <div>6 lesson</div>
                                        </div>
                                        <div class="content-info-more">
                                            <h4 class="preview-lesson show-video" onclick="activeOn()">Preview Lesson <i id="icon" class="fa fa-angle-down"></i></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>                                            
                        </div>
                    <div class="card-lessons-list">
                        <div class="lessons-list">
                            <!-- LESSON -->
                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101"> How To Tune A Guitar For Beginners</a>
                                </div>
                            </div>

                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">How To Tune A Guitar For Beginners</a> 
                                </div>
                            </div>

                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101"> How To Tune A Guitar For Beginners</a>
                                </div>
                            </div>
                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101"> How To Tune A Guitar For Beginners</a>
                                </div>
                            </div>

                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">How To Tune A Guitar For Beginners</a> 
                                </div>
                            </div>

                            <div class="lessons-detail">
                                <div class="lessons-detail-img">
                                    <a href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101">
                                        <div class="wrap-img-lessons-details">
                                            <img src="https://i.ytimg.com/vi/X2EmpWr9vUc/default.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="lessons-detail-header">
                                    <a class="lessons-text" href="https://www.justinguitar.com/guitar-lessons/how-to-tune-a-guitar-for-beginners-b1-101"> How To Tune A Guitar For Beginners</a>
                                </div>
                            </div>
                        </div>
                        <!-- END LESSON -->
                    </div>
                </div>
            </c:forEach>
        </div>
</section>

<script src="<c:url value='/script/course1.js'/>"></script>

<jsp:include page="/includes/footer.jsp" /> 












