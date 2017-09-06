<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/jsp/common/head.jsp">
        <jsp:param name="title" value="News feed"/>
    </jsp:include>
    <link type="text/css" href="/resources/components/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
</head>

<body>
<div class="navbar">
    <jsp:include page="/WEB-INF/jsp/common/topmenu.jsp"/>
</div>
<div class="col-sm-1"></div>
<div class="col-sm-10" id="container">
</div>
<script src="/resources/components/d3/d3.min.js"></script>
<script src="/resources/components/topojson/topojson.min.js"></script>
<script src="/resources/components/datamaps/dist/datamaps.ken.js"></script>
<script>
    var map = new Datamap({
        element: document.getElementById('container'),
        scope: 'ken',
        fills: {
            defaultFill: 'rgba(23,48,210,0.9)' // Any hex, color name or rgb/rgba value
        },
        setProjection: function(element) {
            var projection = d3.geo.equirectangular()
                .center([42.7, 0])
                .rotate([4.4, 0])
                .scale(4500)
                .translate([element.offsetWidth / 2, element.offsetHeight / 2]);
            var path = d3.geo.path()
                .projection(projection);

            return {path: path, projection: projection};
        },
        responsive: true
    });
</script>
<div class="col-sm-1"></div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/resources/components/jquery/dist/jquery.min.js"></script>
<script src="/resources/components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/resources/components/holderjs/holder.js"></script>
<script src="/resources/components/vue/dist/vue.js"></script>
<script src="/resources/components/vue-resource/dist/vue-resource.js"></script>
<%--<script src="/resources/js/main.js"></script>--%>
</body>
</html>
