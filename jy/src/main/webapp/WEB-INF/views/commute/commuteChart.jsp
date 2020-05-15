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
	<script>
		
		
		// Set new default font family and font color to mimic Bootstrap's default styling
		Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#292b2c';
	
		// Bar Chart Example
		var ctx = document.getElementById("myBarChart");
		var jan1=0;
		var feb1=0;
		var mar1=0;
		var apr1=0;
		var may1=0;
		var jun1=0;
		var jul1=0;
		var aug1=0;
		var sep1=0;
		var oct1=0;
		var nov1=0;
		var dec1=0;
		
		var jan2=0;
		var feb2=0;
		var mar2=0;
		var apr2=0;
		var may2=0;
		var jun2=0;
		var jul2=0;
		var aug2=0;
		var sep2=0;
		var oct2=0;
		var nov2=0;
		var dec2=0;
	
		$.ajax({
			type: "post",
			url: "chartData.co",
			success: function(map) {
				
				for(var i=0; i<map.glist.length; i++){
					if(map.glist[i].month == "01"){
						jan1=map.glist[i].time;
					} else if(map.glist[i].month == "02"){
						feb1=map.glist[i].time;
					} else if(map.glist[i].month == "03"){
						mar1=map.glist[i].time;
					} else if(map.glist[i].month == "04"){
						apr1=map.glist[i].time;
					} else if(map.glist[i].month == "05"){
						may1=map.glist[i].time;
					} else if(map.glist[i].month == "06"){
						jun1=map.glist[i].time;
					} else if(map.glist[i].month == "07"){
						jul1=map.glist[i].time;
					} else if(map.glist[i].month == "08"){
						aug1=map.glist[i].time;
					} else if(map.glist[i].month == "09"){
						sep1=map.glist[i].time;
					} else if(map.glist[i].month == "10"){
						oct1=map.glist[i].time;
					} else if(map.glist[i].month == "11"){
						nov1=map.glist[i].time;
					} else if(map.glist[i].month == "12"){
						dec1=map.glist[i].time;
					}
				}
				
				for(var i=0; i<map.hlist.length; i++){
					if(map.hlist[i].month == "01"){
						jan2=map.hlist[i].time;
					} else if(map.hlist[i].month == "02"){
						feb2=map.hlist[i].time;
					} else if(map.hlist[i].month == "03"){
						mar2=map.hlist[i].time;
					} else if(map.hlist[i].month == "04"){
						apr2=map.hlist[i].time;
					} else if(map.hlist[i].month == "05"){
						may2=map.hlist[i].time;
					} else if(map.hlist[i].month == "06"){
						jun2=map.hlist[i].time;
					} else if(map.hlist[i].month == "07"){
						jul2=map.hlist[i].time;
					} else if(map.hlist[i].month == "08"){
						aug2=map.hlist[i].time;
					} else if(map.hlist[i].month == "09"){
						sep2=map.hlist[i].time;
					} else if(map.hlist[i].month == "10"){
						oct2=map.hlist[i].time;
					} else if(map.hlist[i].month == "11"){
						nov2=map.hlist[i].time;
					} else if(map.hlist[i].month == "12"){
						dec2=map.hlist[i].time;
					}
				}
				
				var myLineChart = new Chart(ctx, {
					
					 type: 'bar',
					  data: {
					    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					    datasets: [
					    	{label: "Revenue",
					      	 backgroundColor: "#28a745",
					      	 borderColor: "#28a745",
					      	 data: [jan1, feb1, mar1, apr1, may1, jun1, jul1, aug1, sep1, oct1, nov1, dec1]},
					      	{label: "Revenue",
					    	 backgroundColor: "#ffc107",
					         orderColor: "#ffc107",
					      	 data: [jan2, feb2, mar2, apr2, may2, jun2, jul2, aug2, sep2, oct2, nov2, dec2]
					    }],
					  },
					  options: {
					    scales: {
					      xAxes: [{
					        time: {
					          unit: 'month'
					        },
					        gridLines: {
					          display: false
					        },
					        ticks: {
					          maxTicksLimit: 13
					        }
					      }],
					      yAxes: [{
					        ticks: {
					          min: 0,
					          max: 1000,
					          maxTicksLimit: 5
					        },
					        gridLines: {
					          display: true
					        }
					      }],
					    },
					    legend: {
					      display: false
					    }
					  }
				});
			}
		});
		
		
	</script>
</body>
</html>