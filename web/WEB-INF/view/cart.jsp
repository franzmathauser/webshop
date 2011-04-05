

<div id="centerColumn">

    <p>Your shopping cart contains x items.</p>

    <div id="actionBar">
        <a href="#" class="bubble hMargin">clear cart</a>
        <a href="category" class="bubble hMargin">continue shopping</a>
        <a href="checkout" class="bubble hMargin">proceed to checkout</a>
    </div>

    <c:if test="${!empty cart && cart.numberOfItems != 0}">

        <h4 id="subtotal">subtotal: &euro; ${cart.subtotal} </h4>

        <table id="cartTable">

            <tr class="header">
                <th>product</th>
                <th>name</th>
                <th>price</th>
                <th>quantity</th>
            </tr>

            <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">

                <c:set var="product" value="${cartItem.product}"/>

                <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
                    <td>
                        <img src="${initParam.productImagePath}${product.name}.png"
                             alt="${product.name}">
                    </td>

                    <td>${product.name}</td>

                    <td>
                        &euro; ${cartItem.total}
                        <br>
                        <span class="smallText">( &euro; ${product.price} / unit )</span>
                    </td>

                    <td>
                        <form action="updateCart" method="post">
                            <input type="hidden"
                                   name="productId"
                                   value="${product.id}">
                            <input type="text"
                                   maxlength="2"
                                   size="2"
                                   value="${cartItem.quantity}"
                                   name="quantity"
                                   style="margin:5px">
                            <input type="submit"
                                   name="submit"
                                   value="update">
                        </form>
                    </td>
                </tr>

            </c:forEach>

        </table>

    </c:if>

</div>
