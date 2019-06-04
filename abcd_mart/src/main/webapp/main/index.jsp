<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="ABCD-Mart" />
<title>인덱스입니다</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />


<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<!-- advertisement -->
<link rel="stylesheet" href="../css/advertise.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><!-- 중간광고용 추가 -->
<!-- best/new 상품 -->
<link rel="stylesheet" href="../css/newarrivals.css"/>
<link rel="stylesheet" href="../css/bestaward.css"/>
<link rel="stylesheet" href="../css/theme_mdsPick.css"/>
<link rel="stylesheet" href="../css/slick.css"/>
<link rel="stylesheet" href="../css/slick-theme.css" />
<link rel="stylesheet" href="../css/mainFooter.css"/>

</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>

<jsp:include page="../template/top_ads.jsp"/>
<jsp:include page="../template/newArrivals.jsp"/>

<jsp:include page="../template/mid_ads.jsp"/>


<jsp:include page="../template/bestAward.jsp"/>
<jsp:include page="../template/bestBrand.jsp"/>

<jsp:include page="../template/themeShop.jsp"/>
<jsp:include page="../template/mds_pick.jsp"/>


<jsp:include page="../template/bottom_ads.jsp"/>



<footer>
<jsp:include page="../template/noticeMovie.jsp"/>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>




</body>
<!-- advertisement -->
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
<script src="../js/advertise.js"></script>
<!-- advertisement -->

<!-- best & new -->

<script type="text/javascript" src="../js/slick.min.js"></script>
<script type="text/javascript" src="../js/bestAward.js"></script>
<script type="text/javascript" src="../js/bestBrand.js"></script>
<script type="text/javascript" src="../js/newArrivals.js"></script>
<!-- best & new -->


<script type="text/javascript" src="../js/theme.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>
</html>