<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header_product.jsp" /> 
<section>
    <!-- SLIDESHOW -->
    <div id="wrapper">
        <div class="page1">   
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img src="<c:url value='/images/backgroun2.jpg'/>" alt="Chicago" width="100%" height="750">
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
        <!-- END SLIDESHOW -->
        <div id="content">
            <!-- PRODUCT -->
            <section class="offer-product">
                <div class="wrap-offer-product">
                    <div class="content-offer-product">
                        <div class="content-offer-product-container">
                            <h2 class="text-heading">Review Product</h2>
                        </div>
                    </div>
                    <div class="sub-product">
                        <c:forEach var="product" items="${products}">
                            <a href="/nav/Cart?code=${product.productID}">
                                <div  class="sub-product-container">
                                    <div class="content-sub-product">
                                        <div class="text-sub-product">
                                            <div class="background-text-sub-product">
                                                <img src=<c:out value="${product.productPic}"/> alt="" width="260" height="290">
                                            </div>
                                            <div class="text-overlay">
                                                <h1>${product.productName}</h1>                               
                                            </div>
                                        </div>
                                        <div class="wrap-icon-holder-product">
                                            <div class="icon-holder-product">                                        
                                                <span class="wrap-span-icon-holder-product">                                   
                                                    <i id="credit-product" class="fa fa-credit-card"><span class="credit-product-price">${product.getPriceCurrencyFormat()}</span></i>                                       
                                                </span>
                                            </div>
                                        </div>
                                        <div class="wrap-add-to-cart-button">
                                            <form method="post" action="<c:url value='/nav/Cart/addItem'/>">
                                                <input type="hidden" name="productCode" value="${product.productID}">
                                                <input type="submit" value="Add To Cart" class="add-to-cart-button">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </a> 
                        </c:forEach>
                    </div>
                </div>
            </section>
        </div>
    </div>

</section>
<jsp:include page="/includes/footer.jsp" /> 
