<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 29.03.2011, 17:53:42
    Author     : Franz Mathauser
--%>
<%--
<sql:query var="categories" dataSource="jdbc/javaee_webshop">
    SELECT * from category
</sql:query>

<div id="indexRightColumn">

    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
        <a href="category?${category.id}">
            <span class="categoryLabelText">${category.name}</span>
            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
        </a>
    </div>
    </c:forEach>
</div>
--%>

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
               <!--
               <a class="menu_item" href="http://www.free-css.com/"><span>Lorem ipsum</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Nulla facilisi</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Suspendisse ipsum</span></a><br/>
              <a class="menu_item2" href="http://www.free-css.com/"><span>Aliquam interdum</span></a><br/>
              <a class="menu_item2" href="http://www.free-css.com/"><span>Morbi sit amet augue</span></a><br/>
              <a class="menu_item2" href="http://www.free-css.com/"><span>In hac habitasse platea dictumst</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Donec sed mauris sit amet</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>In sollicitudin cursus purus</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Lorem ipsum</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Nulla facilisi</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Suspendisse ipsum</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Aliquam volutpat auctor</span></a><br/>
              <a class="menu_item" href="http://www.free-css.com/"><span>Suspendisse scelerisque</span></a><br/>
                -->
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
                <!--
              <table>
                <tr>
                  <td class="page_center_button"><a class="page_center_buy" href="http://www.free-css.com/"><span>buy</span></a><a class="page_center_info" href="http://www.free-css.com/"><span>more-info</span></a> </td>
                  <td class="page_center_content"><div class="page_center_text"> <span class="blue2">Lorem ipsum dolor</span><br/>
                      <span class="gray">Donec at:  justo ac</span><br/>
                      <span class="gray">Cras ut: ligula nec</span><br/>
                      <br/>
                      <span class="green">Price: $156</span><br/>
                    </div></td>
                  <td class="page_center_img"><img src="img/photo4.gif" alt="" /> </td>
                  <td class="page_center_button"><a class="page_center_buy" href="http://www.free-css.com/"><span>buy</span></a><a class="page_center_info" href="http://www.free-css.com/"><span>more-info</span></a> </td>
                  <td class="page_center_content"><div class="page_center_text"> <span class="blue2">Lorem ipsum dolor</span><br/>
                      <span class="gray">Donec at:  justo ac</span><br/>
                      <span class="gray">Cras ut: ligula nec</span><br/>
                      <br/>
                      <span class="green">Price: $156</span><br/>
                    </div></td>
                  <td class="page_center_img2" ><img src="img/photo4.gif" alt="" /> </td>
                </tr>
                <tr>
                  <td class="page_center_button"><a class="page_center_buy" href="http://www.free-css.com/"><span>buy</span></a><a class="page_center_info" href="http://www.free-css.com/"><span>more-info</span></a> </td>
                  <td class="page_center_content"><div class="page_center_text"> <span class="blue2">Lorem ipsum dolor</span><br/>
                      <span class="gray">Donec at:  justo ac</span><br/>
                      <span class="gray">Cras ut: ligula nec</span><br/>
                      <br/>
                      <span class="green">Price: $156</span><br/>
                    </div></td>
                  <td class="page_center_img" ><img src="img/photo4.gif" alt="" /> </td>
                  <td class="page_center_button"><a class="page_center_buy" href="http://www.free-css.com/"><span>buy</span></a><a class="page_center_info" href="http://www.free-css.com/"><span>more-info</span></a> </td>
                  <td class="page_center_content"><div class="page_center_text"> <span class="blue2">Lorem ipsum dolor</span><br/>
                      <span class="gray">Donec at:  justo ac</span><br/>
                      <span class="gray">Cras ut: ligula nec</span><br/>
                      <br/>
                      <span class="green">Price: $156</span><br/>
                    </div></td>
                  <td class="page_center_img2" ><img src="img/photo4.gif" alt="" /> </td>
                </tr>
              </table>
                -->
            </div>
          </div>
        </div>
        <div class="cleaner"></div>
      </div>