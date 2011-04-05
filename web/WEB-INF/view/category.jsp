<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<div id="CentralPart">
    <div id="LeftPart">
        <div id="Menu">
            <div id="Menu_header">
                <div class="menu_header_left"> <span class="menu_text">Kategorie</span> </div>
                <div class="menu_header_right"> </div>
            </div>
            <div id="Menu_content">

                <c:forEach var="category" items="${categories}">

                    <a class="menu_item" href="category?${category.id}">
                        <span class="categoryLabelText">${category.name}</span>
                        <%-- <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                             alt="${category.name}">--%>
                    </a><br />
                </c:forEach>
            </div>
        </div>
        <div id="Poll">
            <div id="Poll_header">
                <div class="menu_header_left"> <span class="menu_text">POLL</span> </div>
                <div class="menu_header_right"> </div>
            </div>
            <div id="Poll_content"> <span class="poll_question">Donec at justo ac ipsum laoreet dapibus?</span><br/>
                <a class="poll_unswer" href="http://www.free-css.com/"><span>Lorem ipsum</span></a><br/>
                <a class="poll_unswer" href="http://www.free-css.com/"><span>Nulla facilisi</span></a><br/>
                <a class="poll_unswer" href="http://www.free-css.com/"><span>Suspendisse ipsum</span></a><br/>
            </div>
        </div>
        <div id="Banner"> <img src="img/banner.jpg" alt="" /> </div>
    </div>
    <div id="RightPart">
        <div id="Page">
            <div id="Page_header">
                <h1>Advantages of our shop</h1>
                <table>
                    <tr>
                        <td class="page_header_img"><img src="img/basket.gif" alt="" /></td>
                        <td class="page_header_text"><p>Donec at justo ac ipsum laoreet dapibus. Vivamus lacinia. Suspendisse ipsum. Morbi vitae nulla. In hac habitasse platea dictumst.</p></td>
                        <td class="page_header_img"><img src="img/idea.gif" alt="" /></td>
                        <td class="page_header_text"><p>Etiam sollicitudin dignissim tellus. Cras ut ligula nec ligula aliquam ultrices. Praesent tempor. Donec arcu. Morbi sit amet augue.</p></td>
                    </tr>
                    <tr>
                        <td class="page_header_img"><img src="img/car.gif" alt="" /></td>
                        <td class="page_header_text"><p>Etiam sollicitudin dignissim tellus. Cras ut ligula nec ligula aliquam ultrices. Praesent tempor. Donec arcu. Morbi sit amet augue.</p></td>
                        <td class="page_header_img"><img src="img/envelope.gif" alt="" /></td>
                        <td class="page_header_text"><p>Donec at justo ac ipsum laoreet dapibus. Vivamus lacinia. Suspendisse ipsum. Morbi vitae nulla. In hac habitasse platea dictumst.</p></td>
                    </tr>
                </table>
            </div>
            <div id="Page_top">
                <p> Lorem ipsum dolor sit amet 1-4<br/>
                    Cras volutpat ligula sed est. Quisque lacus <a href="http://www.free-css.com/">libero,</a> <a href="http://www.free-css.com/">vestibulum ut,</a> <a href="http://www.free-css.com/">venenatis ac,</a> <a href="http://www.free-css.com/">interdum quis, mi.</a><br/>
                    Donec at justo ac ipsum laoreet <a href="http://www.free-css.com/">dapibus</a><br/>
                    <a href="http://www.free-css.com/">1</a> 2 3 .... 11 12 13<br/>
                </p>
            </div>
            <div id="Page_center">

                <table>
                    <c:forEach var="product" items="${categoryProducts}" varStatus="iter">


                        <c:if test="${ (iter.index) % 2 == 0}">
                            <tr>
                            </c:if>
                            <td class="page_center_button">
                                <form action="addToCart" method="post">
                                    <input type="hidden" name="productId" value="${product.id}" />
                                    <input class="page_center_buy" type="image" src="img/buy.gif" name="submit" >
                                </form>
                                <a class="page_center_info" href="http://www.free-css.com/"><span>more-info</span></a> </td>
                            <td class="page_center_content"><div class="page_center_text"> <span class="blue2">${product.name}</span><br/>
                                    <span class="gray">Name:  ${product.name}</span><br/>
                                    <span class="gray">Beschreibung: ${product.description}</span><br/>
                                    <br/>
                                    <span class="green">Preis ${product.price}</span><br/>
                                </div>
                            </td>
                            <td class="page_center_img"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" title="${product.name}" width="66px"/> </td>
                                <c:if test="${ (iter.index) % 2 == 1}">
                            </tr>
                        </c:if>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <div class="cleaner"></div>
</div>