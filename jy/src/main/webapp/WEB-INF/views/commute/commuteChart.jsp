<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="main-wrapper">

		<jsp:include page="../common/navigator.jsp" />

		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<h4 class="page-title">근태 관리</h4>
						<div class="ml-auto text-right">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="main.do">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Chart</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->

				<div class="row">
					<div class="col-12">
						<!-- bar chart -->
						<div id="layoutSidenav_content">
							<div class="row">
								<div class="col-lg-10">
									<div class="card mb-4">
										<div class="card-header">
											<i class="fas fa-chart-bar mr-1"></i>월별 근무 현황
										</div>
										<div class="card-body">
											<canvas id="myBarChart" width="100%" height="50"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<jsp:include page="../common/footer.jsp" />
		</div>
	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/assets/chart-bar-demo.js"></script>
</body>
</html>