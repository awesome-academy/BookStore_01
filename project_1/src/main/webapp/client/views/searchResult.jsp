<%--
  Created by IntelliJ IDEA.
  User: jocker
  Date: 09/11/2018
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#"><spring:message code="label.book"/></a></li>
                        <li><a href="#" class="active"><spring:message code="label.search"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="shop-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="shop-left">
                    <div class="section-title-5 mb-30">
                        <h2><spring:message code="label.shopping.option"/></h2>
                    </div>
                    <div class="left-title mb-20">
                        <h4><spring:message code="label.categories"/></h4>
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <c:forEach items="${categoriesMap}" var="c">
                                <li><a>${c.key}<span>(${c.value})</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4><spring:message code="label.producers"/></h4>
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <c:forEach items="${producers}" var="p">
                            <li><a>${p.key}<span>(${p.value})</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4><spring:message code="label.price"/></h4>
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <c:forEach items="${prices}" var="p">
                                <li><a>${p.key} $<span>(${p.value})</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4><spring:message code="label.random"/></h4>
                    </div>
                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel owl-loaded owl-drag">
                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(-860px, 0px, 0px); transition: all 0s ease 0s; width: 2580px;">
                                    <div class="owl-item active" style="width: 430px;">
                                        <div class="product-total-2">
                                            <c:forEach items="${random}" var="rb">
                                                <div class="single-most-product bd mb-18">
                                                    <div class="most-product-img">
                                                        <a href="/info/${rb.id}">
                                                            <c:set var = "imageBook" value = "${fn:split(rb.avatar, '#')}" />
                                                            <img src="${imageBook[0]}" alt="banner"/>
                                                        </a>
                                                    </div>
                                                    <div class="most-product-content">
                                                        <h4><a href="/info/${rb.id}">${rb.title}</a></h4>
                                                        <div class="product-price">
                                                            <ul>
                                                                <li>$${rb.price}</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="banner-area mb-30">
                        <div class="banner-img-2">
                            <a href="#"><img src="/client/assets/img/banner/31.jpg" alt="banner"></a>
                        </div>
                    </div>
                    <div class="left-title-2 mb-30">
                        <h2>Compare Products</h2>
                        <p>You have no items to compare.</p>
                    </div>
                    <div class="left-title-2">
                        <h2>My Wish List</h2>
                        <p>You have no items in your wish list.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                <div class="category-image mb-30">
                    <a href="#"><img src="/client/assets/img/banner/32.jpg" alt="banner"></a>
                </div>
                <div class="section-title-5 mb-30">
                    <h2><spring:message code="label.book"/></h2>
                </div>
                        <div class="toolbar mb-30">
                            <div class="shop-tab">
                                <div class="tab-3">
                                    <ul>
                                        <li class="active"><a href="#th" data-toggle="tab"><i
                                                class="fa fa-th-large"></i>Grid</a></li>
                                        <li><a href="#list" data-toggle="tab"><i class="fa fa-bars"></i>List</a></li>
                                    </ul>
                                </div>
                                <div class="list-page">
                                    <p>Items 1-9 of 11</p>
                                </div>
                            </div>
                            <div class="ui-widget toolbar-sorter">
                                <label for="tags"><spring:message code="label.search.in.list"/>: </label>
                                <input id="tags"/>
                                <a  id="on-search" href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <!-- tab-area-start -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="th">
                                <div class="row">
                                    <c:forEach items="${books}" var="b">
                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                            <!-- single-product-start -->
                                            <div class="product-wrapper mb-40">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <c:set var = "imageBook" value = "${fn:split(b.avatar, '#')}" />
                                                        <img src="${imageBook[0]}" alt="book" />
                                                    </a>
                                                    <div class="quick-view">
                                                        <a class="action-view" href="#" data-target="#productModal"
                                                           data-toggle="modal" title="Quick View">
                                                            <i class="fa fa-search-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div class="product-flag">
                                                        <ul>
                                                            <li><span class="sale">new</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-details text-center">
                                                    <h4><a href="/books/info/${b.id}">${b.title}</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$${b.price}</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a class="add-to-cart" bId="${b.id}" ><i
                                                                class="fa fa-shopping-cart"></i><spring:message code="add.to.cart"/></a>
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
                            <div class="tab-pane fade" id="list">
                                    <%--list of product--%>
                            </div>
                        </div>
                        <!-- tab-area-end -->
                        <!-- pagination-area-start -->
                        <div class="pagination-area mt-50">

                            <div class="wrapper">
                                <div class="container">

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <ul id="pagination-demo" class="pagination-sm"></ul>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- pagination-area-end -->
            </div>
        </div>
    </div>
</div>

<input id="pages" hidden value="${pages}"/>

<link href = "/client/assets/css/search.css"
      rel = "stylesheet"/>
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
      rel = "stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.1/jquery.twbsPagination.min.js"></script>
<script src="/client/assets/js/client-search.js"></script>

