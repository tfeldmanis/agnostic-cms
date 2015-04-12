<%@ Page Language="C#" Inherits="agnostictestfrontend.Default" %>

<%@ Assembly name="System" %>
<%@ Assembly name="System.Data" %>
<%@ Assembly name="Npgsql" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="agnostictestfrontend" %>


<!DOCTYPE HTML>
<!--
	Photon by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Photon by HTML5 UP</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body>
		<!-- Header -->
			<section id="header">
				<div class="inner">
					<span class="icon major fa-cloud"></span>
					<h1>Hi, I'm <strong>Photon</strong>, another fine
					little freebie from <a href="http://html5up.net">HTML5 UP</a>.</h1>
					<p>ccumsan feugiat mi commodo erat lorem ipsum, sed magna
					lobortis feugiat sapien sed etiam volutpat accumsan.</p>
					<ul class="actions">
						<li><a href="#one" class="button scrolly">Discover</a></li>
					</ul>
				</div>
			</section>

		<!-- Three -->
			<section id="three" class="main style1 special">
				<div class="container">
					
						<%
						List<Category> categories = GetDBData();
						foreach(Category category in categories) {
						%>
							<header class="major">
								<h2><%=category.name%></h2>
							</header>
							<p>Ante nunc accumsan et aclacus nascetur ac ante amet sapien sed.</p>
							
							<div class="row 150%">
							<% foreach(Product product in category.products) { %>
							
								<div class="4u 12u$(medium)">
								    <span class="image fit"><img src="images/pic02.jpg" alt="" /></span>
									<h3><%=product.name%></h3>
									<p>Adipiscing a commodo ante nunc magna lorem et interdum mi ante nunc lobortis non amet vis sed volutpat et nascetur.</p>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</div>
							<% } %>
							</div>
						<% } %>
				</div>
			</section>

		<!-- Footer -->
			<section id="footer">
				<ul class="icons">
					<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</section>

	</body>
</html>