<%--
  Created by IntelliJ IDEA.
  User: TrongTran
  Date: 11/7/2018
  Time: 1:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- slider-area-start -->
<div class="slider-area mt-30">
    <div class="container">
        <div class="slider-active owl-carousel">
            <div class="single-slider pt-100 pb-145 bg-img"
                 style="background-image:url(/client/assets/img/slider/13.jpg);">
                <div class="row">
                    <div class="col-md-12">
                        <div class="slider-content-3 slider-animated-1 pl-100">
                            <h1>A Game <br>Fuck up</h1>
                            <p class="slider-sale">
                                <span class="sale1">-20%</span>
                                <span class="sale2">
                                            <strong>£80.00</strong>
                                            £60.00
                                        </span>
                            </p>
                            <a href="#">Shop now!</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider pt-100 pb-145 bg-img"
                 style="background-image:url(/client/assets/img/slider/12.jpg);">
                <div class="row">
                    <div class="col-md-12">
                        <div class="slider-content-3 slider-animated-1 pl-100">
                            <h1>Wake The <br>of Thrones</h1>
                            <p class="slider-sale">
                                <span class="sale1">-20%</span>
                                <span class="sale2">
                                            <strong>£80.00</strong>
                                            £60.00
                                        </span>
                            </p>
                            <a href="#">Shop now!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider-area-end -->
<!-- featured-area-start -->
<div class="new-book-area pt-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title section-title-res text-center mb-30">
                    <h2><spring:message code="label.title.featured"/></h2>
                </div>
            </div>
        </div>
        <div class="tab-active owl-carousel">
            <c:forEach items="${newBooks}" var="b">
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="/img-book/${b.avatar}" alt="book" class="primary"/>
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" bId="${b.id}" data-target="#productModal" data-toggle="modal"
                                   title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> <br></li>
                                    <li><span class="discount-percentage">-5%</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-details text-center">
                            <div class="product-rating">
                                <ul>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                </ul>
                            </div>
                            <h4><a href="#">${b.title}</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$${b.price}</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Details"><i
                                            class="fa fa-external-link"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- featured-area-start -->
<!-- banner-area-start -->
<div class="banner-area-5 mtb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-img-2">
                    <a href="#"><img src="/client/assets/img/banner/5.jpg" alt="banner"/></a>
                    <div class="banner-text">
                        <h3>G. Meyer Books & Spiritual Traveler Press</h3>
                        <h2>Sale up to 30% off</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner-area-end -->
<!-- bestseller-area-start -->
<div class="bestseller-area pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="deal-active owl-carousel">
                    <div class="single-deal">
                        <div class="deal-off-day">
                            <div class="deal-off-day-title">
                                <h1>DEALS OF THE DAY</h1>
                            </div>
                            <h2><a href="#">Sprite Yoga <br/>Straps1</a></h2>
                            <div class="sale-area">
                                <div class="price-box">
                                    <span class="old-sale">$38.00</span>
                                    <span class="new-sale">$36.00</span>
                                </div>
                            </div>
                            <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with
                                ruffles at the bottom of the dress.</p>
                            <div class="timer">
                                <div data-countdown="2018/12/15"></div>
                            </div>
                        </div>
                        <div class="banner-img-3">
                            <a href="#"><img src="/client/assets/img/product/3.jpg" alt="banner"/></a>
                        </div>
                    </div>
                    <div class="single-deal">
                        <div class="deal-off-day">
                            <h2><a href="#">Rival Field <br>Messenger</a></h2>
                            <div class="sale-area">
                                <div class="price-box">
                                    <span class="old-sale">$99.00</span>
                                    <span class="new-sale">$50.00</span>
                                </div>
                            </div>
                            <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with
                                ruffles at the bottom of the dress.</p>
                            <div class="timer">
                                <div data-countdown="2018/12/15"></div>
                            </div>
                        </div>
                        <div class="banner-img-3">
                            <a href="#"><img src="/client/assets/img/product/11.jpg" alt="banner"/></a>
                        </div>
                    </div>
                    <div class="single-deal">
                        <div class="deal-off-day">
                            <h2><a href="#">Voyage Yoga <br/> Bag</a></h2>
                            <div class="sale-area">
                                <div class="price-box">
                                    <span class="old-sale">$80.00</span>
                                    <span class="new-sale">$70.00</span>
                                </div>
                            </div>
                            <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with
                                ruffles at the bottom of the dress.</p>
                            <div class="timer">
                                <div data-countdown="2018/12/15"></div>
                            </div>
                        </div>
                        <div class="banner-img-3">
                            <a href="#"><img src="/client/assets/img/product/15.jpg" alt="banner"/></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="bestseller-active owl-carousel">
                    <div class="bestseller-total">
                        <div class="single-bestseller mb-25">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/13.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Rival Messenger</a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$40.00</span></li>
                                        <li><span class="old-price">$45.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-bestseller">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/14.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Impulse Duffle</a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$70.00</span></li>
                                        <li><span class="old-price">$74.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bestseller-total">
                        <div class="single-bestseller mb-25">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/15.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Voyage Yoga Bag</a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$30.00</span></li>
                                        <li><span class="old-price">$32.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-bestseller">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/16.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Compete Track Tote</a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$32.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bestseller-total">
                        <div class="single-bestseller mb-25">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/17.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Fusion Backpack </a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$59.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-bestseller">
                            <div class="bestseller-img">
                                <a href="#"><img src="/client/assets/img/product/14.jpg" alt="book"/></a>
                            </div>
                            <div class="bestseller-text text-center">
                                <h3><a href="#">Impulse Duffle</a></h3>
                                <div class="price">
                                    <ul>
                                        <li><span class="new-price">$70.00</span></li>
                                        <li><span class="old-price">$74.00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bestseller-area-end -->
<!-- product-area-start -->
<div class="product-area pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title bt text-center pt-100 mb-50">
                    <h2><spring:message code="label.our.product"/> </h2>
                    <p><spring:message code="label.our.product.message"/></p>
                </div>
            </div>
            <div class="col-lg-12">
                <!-- tab-menu-start -->
                <div class="tab-menu mb-40 text-center">
                    <ul>
                        <li class="active"><a href="#Audiobooks" data-toggle="tab">New Arrival</a></li>
                        <li><a href="#books" data-toggle="tab">OnSale</a></li>
                        <li><a href="#bussiness" data-toggle="tab">Featured Products</a></li>
                    </ul>
                </div>
                <!-- tab-menu-end -->
            </div>
        </div>
        <!-- tab-area-start -->
        <div class="tab-content">
            <div class="tab-pane active" id="Audiobooks">
                <div class="tab-active owl-carousel">
                    <c:forEach items="${newArrival.books}" var="b">
                        <c:if test="${not empty b}">
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="/img-book/${b.avatar}" alt="book" class="primary"/>
                                    </a>
                                    <div class="quick-view">
                                        <a class="action-view" bId="${b.id}" href="#" data-target="#productModal"
                                           data-toggle="modal"
                                           title="Quick View">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                    </div>
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span> <br></li>
                                            <li><span class="discount-percentage">-5%</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-details text-center">
                                    <div class="product-rating">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h4><a href="#">${b.title}</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$${b.price}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to
                                            cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i
                                                    class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- single-product-end -->
                        </c:if>
                    </c:forEach>
                </div>
            </div>

            <div class="tab-pane fade" id="books">
                <div class="tab-active owl-carousel">
                    <c:forEach items="${onSale.books}" var="b">
                        <c:if test="${not empty b}">
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="/img-book/${b.avatar}" alt="book" class="primary"/>
                                    </a>
                                    <div class="quick-view">
                                        <a class="action-view" bId="${b.id}" href="#" data-target="#productModal"
                                           data-toggle="modal"
                                           title="Quick View">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                    </div>
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span> <br></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-details text-center">
                                    <div class="product-rating">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h4><a href="#">${b.title}</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$${b.price}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to
                                            cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i
                                                    class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- single-product-end -->
                        </c:if>
                    </c:forEach>

                </div>
            </div>
            <div class="tab-pane fade" id="bussiness">
                <div class="tab-active owl-carousel">
                    <c:forEach items="${feature.books}" var="b">
                        <c:if test="${not empty b}">
                            <!-- single-product-start -->

                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="/img-book/${b.avatar}" alt="book" class="primary"/>
                                    </a>
                                    <div class="quick-view">
                                        <a class="action-view" bId="${b.id}" href="#" data-target="#productModal"
                                           data-toggle="modal"
                                           title="Quick View">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                    </div>
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span> <br></li>
                                            <li><span class="discount-percentage">-5%</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-details text-center">
                                    <div class="product-rating">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h4><a href="#">${b.title}</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$${b.price}</li>
                                            <li class="old-price">40.00</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to
                                            cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i
                                                    class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- single-product-end -->
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- tab-area-end -->
    </div>
</div>
<!-- product-area-end -->
<!-- most-product-area-start -->
<div class="most-product-area pb-100">
    <div class="container">
        <div class="row bt-3 pt-95">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
                <div class="section-title-2 mb-30">
                    <h3>Book</h3>
                </div>
                <div class="product-active-2 owl-carousel">
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/20.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Endeavor Daytrip</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/21.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Savvy Shoulder Tote</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$35.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/22.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Compete Track Tote</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$35.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/23.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Voyage Yoga Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/24.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$70.00</li>
                                        <li class="old-price">$74.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/22.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Fusion Backpack</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$59.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
                <div class="section-title-2 mb-30">
                    <h3>Audio books </h3>
                </div>
                <div class="product-active-2 owl-carousel">
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/23.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Voyage Yoga Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/24.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$70.00</li>
                                        <li class="old-price">$74.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/26.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Driven Backpack1</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$40.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/20.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Endeavor Daytrip</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/21.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Savvy Shoulder Tote</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$35.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/22.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Compete Track Tote</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$35.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="section-title-2 mb-30">
                    <h3>children’s books</h3>
                </div>
                <div class="product-active-2 owl-carousel">
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/27.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Crown Summit</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$36.00</li>
                                        <li class="old-price">$38.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/28.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Driven Backpack</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$34.00</li>
                                        <li class="old-price">$36.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/29.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Endeavor Daytrip</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-total-2">
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/23.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Voyage Yoga Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$30.00</li>
                                        <li class="old-price">$33.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product bd mb-18">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/24.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$70.00</li>
                                        <li class="old-price">$74.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-most-product">
                            <div class="most-product-img">
                                <a href="#"><img src="/client/assets/img/product/22.jpg" alt="book"/></a>
                            </div>
                            <div class="most-product-content">
                                <div class="product-rating">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="#">Fusion Backpack</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$59.00</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="block-newsletter">
                    <h2><spring:message code="label.signup.newsletter"/> </h2>
                    <p><spring:message code="label.title.newsletter"/> </p>
                    <form action="#">
                        <input type="text" placeholder="<spring:message code="label.enter.email"/>" />
                    </form>
                    <a href="#"><spring:message code="label.send.eamil"/></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- most-product-area-end -->
<!-- recent-post-area-start -->
<div class="recent-post-area pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title section-title-res pt-100 bt-3 text-center mb-30">
                    <h2>Latest from our blog</h2>
                </div>
            </div>
            <div class="post-active owl-carousel text-center">
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="#"><img src="/client/assets/img/post/1.jpg" alt="post"/></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="#">The History and the Hype</a></h3>
                            <span class="meta-author"> Demo Posthemes </span>
                            <p>Discover five of our favourite dresses from our new collection that are destined to be
                                worn and loved immediately.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="#"><img src="/client/assets/img/post/2.jpg" alt="post"/></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="#">Answers to your Questions</a></h3>
                            <span class="meta-author"> Demo Posthemes </span>
                            <p>Discover five of our favourite dresses from our new collection that are destined to be
                                worn and loved immediately.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="#"><img src="/client/assets/img/post/3.jpg" alt="post"/></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="#">What is Bootstrap?</a></h3>
                            <span class="meta-author"> Demo Posthemes </span>
                            <p>Discover five of our favourite dresses from our new collection that are destined to be
                                worn and loved immediately.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="#"><img src="/client/assets/img/post/4.jpg" alt="post"/></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="#">Etiam eros massa</a></h3>
                            <span class="meta-author"> Demo Posthemes </span>
                            <p>Discover five of our favourite dresses from our new collection that are destined to be
                                worn and loved immediately.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- recent-post-area-end -->
<!-- banner-area-start -->
<div class="banner-area banner-res-large pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="single-banner">
                    <div class="banner-img">
                        <a href="#"><img src="/client/assets/img/banner/1.png" alt="banner"/></a>
                    </div>
                    <div class="banner-text">
                        <h4>Free shipping item</h4>
                        <p>For all orders over $500</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="single-banner">
                    <div class="banner-img">
                        <a href="#"><img src="/client/assets/img/banner/2.png" alt="banner"/></a>
                    </div>
                    <div class="banner-text">
                        <h4>Money back guarantee</h4>
                        <p>100% money back guarante</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
                <div class="single-banner">
                    <div class="banner-img">
                        <a href="#"><img src="/client/assets/img/banner/3.png" alt="banner"/></a>
                    </div>
                    <div class="banner-text">
                        <h4>Cash on delivery</h4>
                        <p>Lorem ipsum dolor consect</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="single-banner mrg-none-xs">
                    <div class="banner-img">
                        <a href="#"><img src="/client/assets/img/banner/4.png" alt="banner"/></a>
                    </div>
                    <div class="banner-text">
                        <h4>Help & Support</h4>
                        <p>Call us : + 0123.4567.89</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner-area-end -->
<!-- social-group-area-start -->
<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">x</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="modal-tab">
                            <div class="product-details-large tab-content">
                                <div class="tab-pane active" id="image-1">
                                    <img src="/client/assets/img/product/quickview-l4.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-2">
                                    <img src="/client/assets/img/product/quickview-l2.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-3">
                                    <img src="/client/assets/img/product/quickview-l3.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-4">
                                    <img src="/client/assets/img/product/quickview-l5.jpg" alt=""/>
                                </div>
                            </div>
                            <div class="product-details-small quickview-active owl-carousel">
                                <a class="active" href="#image-1"><img src="/client/assets/img/product/quickview-s4.jpg"
                                                                       alt=""/></a>
                                <a href="#image-2"><img src="/client/assets/img/product/quickview-s2.jpg" alt=""/></a>
                                <a href="#image-3"><img src="/client/assets/img/product/quickview-s3.jpg" alt=""/></a>
                                <a href="#image-4"><img src="/client/assets/img/product/quickview-s5.jpg" alt=""/></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-12">
                        <div class="modal-pro-content">
                            <h3 id="book-title">Chaz Kangeroo Hoodie3</h3>
                            <div class="price">
                                <span id="book-price">$70.00</span>
                            </div>
                            <p id="book-description">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>
                            <div class="quick-view-select">
                                <div class="select-option-part">
                                    <label>Size*</label>
                                    <select class="select">
                                        <option value="">S</option>
                                        <option value="">M</option>
                                        <option value="">L</option>
                                    </select>
                                </div>
                                <div class="quickview-color-wrap">
                                    <label>Color*</label>
                                    <div class="quickview-color">
                                        <ul>
                                            <li class="blue">b</li>
                                            <li class="red">r</li>
                                            <li class="pink">p</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <form action="#">
                                <input type="number" value="1"/>
                                <button>Add to cart</button>
                            </form>
                            <span><i class="fa fa-check"></i> In stock</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->


