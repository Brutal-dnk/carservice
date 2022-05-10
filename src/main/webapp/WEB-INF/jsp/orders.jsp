<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Заказы</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <jsp:include page="header.jsp"></jsp:include>
                </div>
            </div>
            <c:forEach var="order" items="${requestScope.orders}">
                <form action="/controller?command=endorder" method="post">
                    <input hidden value="${order.id}" name="orderId">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-4">
                                    <h4>Назавание услуги</h4>
                                    <h4>${order.service.name}</h4>
                                    <h4>Стоимость услуги</h4>
                                    <h4>${order.sevice.cost}</h4>
                                </div>
                                <div class="col-md-4">
                                    <h4>Клиент</h4>
                                    <h4>${order.user.name}</h4>
                                    <h4>Заказ выполнен</h4>
                                    <h4>${order.finished}</h4>
                                </div>
                                <div class="col-md-4">

                                    <button type="submit" class="btn btn-success">
                                        Заказ выполнен
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </c:forEach>
            <div class="row">
                <div class="col-md-12">
                    <jsp:include page="footer.jsp"></jsp:include>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
