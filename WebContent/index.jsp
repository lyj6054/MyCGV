<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyCGV/css/mycgv.css">
<link rel="stylesheet" href="http://localhost:9000/MyCGV/css/carousel.css">
<script src="http://localhost:9000/MyCGV/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyCGV/js/mycgv.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  	.section1 {
  		width:980px;
  	}
  </style>
</head>
<body>
	<!--  header  -->
	<jsp:include page="/header.jsp" />

	<!--  content  -->
	<div class="content">
		<div>
			<section class="section1">
				<div>
					<!-- 캐러셀 start-->
					<div id="demo" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<!-- <li data-target="#demo" data-slide-to="2"></li> -->
						</ul>

						<!-- The slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="images/c1.jpg" width="980" height="450">
							</div>
							<div class="carousel-item">
								<img src="images/c2.jpg" width="980" height="450">
							</div>
							<!-- <div class="carousel-item">
								<img src="ny.jpg" alt="New York">
							</div> -->
						</div>

						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a> <a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon"></span>
						</a>

					</div>
					<!-- 캐러셀  end-->
				</div>
			</section>
		</div>
		<section class="section2">
			<div>
				<img src="http://localhost:9000/MyCGV/images/h3_movie_selection.gif">
			</div>
			<div>
				<!-- 동영상 추가 -->
				<iframe width="730" height="388"
					src="https://www.youtube.com/embed/6wf_L9-klsE" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<img src="http://localhost:9000/MyCGV/images/1109_240x388.jpg">
			</div>
		</section>
		<section class="section3">
			<div>
				<img src="http://localhost:9000/MyCGV/images/h3_event.gif">
			</div>
			<article>
				<img src="http://localhost:9000/MyCGV/images/15893602293300.jpg">
				<img src="http://localhost:9000/MyCGV/images/15832984008920.jpg">
				<img src="http://localhost:9000/MyCGV/images/15827922236270.jpg">
				<img src="http://localhost:9000/MyCGV/images/15856157808830.jpg">
			</article>
			<article>
				<img src="http://localhost:9000/MyCGV/images/16039359082420.png">
				<img src="http://localhost:9000/MyCGV/images/main_moviecollage.jpg">
				<img src="http://localhost:9000/MyCGV/images/gifrcard.jpg">
			</article>
		</section>

	</div>

	<!--  footer  -->
	<jsp:include page="/footer.jsp" />


</body>
</html>