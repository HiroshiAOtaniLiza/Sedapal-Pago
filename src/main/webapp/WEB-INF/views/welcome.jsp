<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>

<%-- definir el folder de la plantilla --%>
<c:choose>
	<c:when test="${not empty _template}">
		<c:set var="_folder" value="${_template}" />
	</c:when>
</c:choose>

<html lang="es" class="no-js">
<head>
<meta charset="UTF-8">
<title>Sedapal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="<c:url value='/static/assets/images/sedapal/logo.png' />"
	sizes="196x196">

<link rel="stylesheet"
	href="<c:url value='/static/libs/bower/font-awesome/css/font-awesome.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.css' />">
<!-- build:css ../css/app.min.css -->
<link rel="stylesheet"
	href="<c:url value='/static/libs/bower/animate.css/animate.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/libs/bower/fullcalendar/dist/fullcalendar.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/libs/bower/perfect-scrollbar/css/perfect-scrollbar.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/assets/css/bootstrap.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/assets/css/core.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/assets/css/app.css' />">
<!-- endbuild -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900,300">
<script
	src="<c:url value='/static/libs/bower/breakpoints.js/dist/breakpoints.min.js' />"></script>
<script>
	Breakpoints();
</script>
</head>
<body class="menubar-top menubar-light theme-primary">
	<!-- APP NAVBAR ==========-->
	<nav id="app-navbar"
		class="navbar navbar-inverse navbar-fixed-top light">
		<!-- navbar header -->
		<div class="navbar-header">
			<div class="navbar-brand">
				<span class="brand-icon"><img
					src="<c:url value='/static/assets/images/sedapal/logo.png' />"
					width="100px"></span>
			</div>
		</div>
		<!-- .navbar-header -->
		
		<div class="navbar-container container-fluid">
		    <div class="collapse navbar-collapse" id="app-navbar-collapse">
		      <ul class="nav navbar-toolbar navbar-toolbar-right navbar-right">
		        <li class="nav-item dropdown hidden-float">
		          <a href="javascript:void(0)" data-toggle="collapse" aria-expanded="false">
		            <i class="zmdi zmdi-hc-lg zmdi-search"><span>Suministros</span></i>
		          </a>
		        </li>
		      </ul>
		    </div>
		  </div><!-- navbar-container -->
	</nav>
	<!--========== END app navbar -->
	<!-- APP ASIDE ==========-->
	<aside id="menubar" class="menubar primary">
		<div class="menubar-scroll">
			<div class="menubar-scroll-inner">
				<ul class="app-menu">
					<li class="has-submenu"><a href="javascript:void(0)"
						class="submenu-toggle"> <span class="menu-text">Suministros</span>
					</a></li>

					<li class="has-submenu"><a href="javascript:void(0)"
						class="submenu-toggle"> <span class="menu-text">Historial
								de Pagos</span>
					</a></li>

					<li class="has-submenu"><a href="javascript:void(0)"
						class="submenu-toggle"><span class="menu-text">Preguntas
								Frecuentes</span> </a></li>

					<li class="has-submenu"><a href="javascript:void(0)"
						class="submenu-toggle"> <span class="menu-text">Suscribirse
								a Cargo Recurrente</span>
					</a></li>

				</ul>
				<!-- .app-menu -->
			</div>
			<!-- .menubar-scroll-inner -->
		</div>
		<!-- .menubar-scroll -->
	</aside>
	<!--========== END app aside -->

	<!-- APP MAIN ==========-->
	<main id="app-main" class="app-main">
	<div class="wrap">
		<section class="app-content">
			<%-- en este punto, _template nunca viene vacio --%>
			<c:choose>
				<c:when test="${empty _module}">
					<c:choose>
						<c:when test="${not empty _page}">
							<c:import url="${_folder}/${_page}.jsp" />
						</c:when>
					</c:choose>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${not empty _page}">
							<c:import url="${_folder}/${_module}/${_page}.jsp" />
						</c:when>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</section>
		<!-- #dash-content -->
	</div>
	<!-- .wrap --> <!-- APP FOOTER -->
	<div class="wrap p-t-0">
		<footer class="app-footer">
			<div class="clearfix">
				<div class="copyright pull-left">Copyright Enchufe 2017 &copy;</div>
			</div>
		</footer>
	</div>
	<!-- /#app-footer --> </main>
	<!--========== END app main -->
	<!-- /#side-panel -->

	<!-- build:js ../assets/js/core.min.js -->
	<script
		src="<c:url value='/static/libs/bower/jquery/dist/jquery.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/jquery-ui/jquery-ui.min.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/jQuery-Storage-API/jquery.storageapi.min.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/jquery/dist/jquery.dataTables.min.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/bootstrap-sass/assets/javascripts/bootstrap.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/superfish/dist/js/hoverIntent.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/superfish/dist/js/superfish.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/jquery-slimscroll/jquery.slimscroll.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/perfect-scrollbar/js/perfect-scrollbar.jquery.js' />"></script>
	<script src="<c:url value='/static/libs/bower/PACE/pace.min.js' />"></script>
	<script src="<c:url value='/static/js/general.js' />"></script>
	<!-- endbuild -->

	<!-- build:js ../assets/js/app.min.js -->
	<script src="<c:url value='/static/assets/js/library.js' />"></script>
	<script src="<c:url value='/static/assets/js/plugins.js' />"></script>
	<script src="<c:url value='/static/assets/js/app.js' />"></script>
	<!-- endbuild -->
	<script src="<c:url value='/static/libs/bower/moment/moment.js' />"></script>
	<script
		src="<c:url value='/static/libs/bower/fullcalendar/dist/fullcalendar.min.js' />"></script>
	<script src="<c:url value='/static/assets/js/fullcalendar.js' />"></script>
</body>
</html>