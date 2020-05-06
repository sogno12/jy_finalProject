<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="common/navigator.jsp"/>
		
		
		<!-- Page wrapper  -->
	    <!-- ============================================================== -->
	    <div class="page-wrapper">
	        <!-- ============================================================== -->
	        <!-- Bread crumb and right sidebar toggle -->
	        <!-- ============================================================== -->
	         <div class="page-breadcrumb">
	            <div class="row">
	                <div class="col-12 d-flex no-block align-items-center">
	                    <nav aria-label="breadcrumb">
	                        <ol class="breadcrumb">
	                            <li class="breadcrumb-item"><a href="#">Home</a></li>
	                        </ol>
	                    </nav>
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
	            <!-- Sales Cards  -->
	            <!-- ============================================================== -->
	            <div class="row">
	                <!-- Column -->
	                <div class="col-md-6 col-lg-2 col-xlg-3">
	                    <div class="card card-hover">
	                        <div class="box bg-cyan text-center" style="cursor: pointer;" onclick="goProfile();">
	                            <h1 class="font-light text-white"><i class="mdi mdi-account-card-details"></i></h1>
	                            <h6 class="text-white">내 정보</h6>
	                        </div>
	                    </div>
	                </div>
	                <!-- Column -->
	                <div class="col-md-6 col-lg-4 col-xlg-3">
	                    <div class="card card-hover">
	                        <div class="box bg-success text-center" style="cursor: pointer;" onclick="goMyRequest();">
	                            <h1 class="font-light text-white"><i class="mdi mdi-file-document"></i></h1>
	                            <h6 class="text-white">결재 진행사항</h6>
	                        </div>
	                    </div>
	                </div>
	                 <!-- Column -->
	                <div class="col-md-6 col-lg-2 col-xlg-3">
	                    <div class="card card-hover">
	                        <div class="box bg-warning text-center" style="cursor: pointer;" onclick="goCafe();">
	                            <h1 class="font-light text-white"><i class="mdi mdi-coffee-outline"></i></h1>
	                            <h6 class="text-white">카페테리아</h6>
	                        </div>
	                    </div>
	                </div>
	                <!-- Column -->
	                <div class="col-md-6 col-lg-2 col-xlg-3">
	                    <div class="card card-hover">
	                        <div class="box bg-danger text-center" style="cursor: pointer;" onclick="goToWork();">
	                            <h1 class="font-light text-white"><i class="mdi mdi-tie"></i></h1>
	                            <h6 class="text-white">출근</h6>
	                        </div>
	                    </div>
	                </div>
	                <!-- Column -->
	                <div class="col-md-6 col-lg-2 col-xlg-3">
	                    <div class="card card-hover">
	                        <div class="box bg-info text-center" style="cursor: pointer;" onclick="leaveWork();">
	                            <h1 class="font-light text-white"><i class="mdi mdi-heart-outline"></i></h1>
	                            <h6 class="text-white">퇴근</h6>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- ============================================================== -->
	
	            <!-- ============================================================== -->
	            <!-- Sales chart -->
	            <!-- ============================================================== -->
	            <!-- ============================================================== -->
	            <!-- Recent comment and chats -->
	            <!-- ============================================================== -->
	            <div class="row">
	                <!-- column -->
	                <div class="col-lg-6">
	                    <!-- card new -->
	                    <div class="card">
	                        <div class="card-body">
	                            <h4 class="card-title m-b-0">공지사항</h4>
	                        </div>
	                        <ul class="list-style-none">
	                            <li class="d-flex no-block card-body">
	                                <i class="fa fa-check-circle w-30px m-t-5"></i>
	                                <div>
	                                    <a href="#" class="m-b-0 font-medium p-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
	                                    <span class="text-muted">But already everything was solved. It will ...</span>
	                                </div>
	                                <div class="ml-auto">
	                                    <div class="tetx-right">
	                                        <h5 class="text-muted m-b-0">20</h5>
	                                        <span class="text-muted font-16">Jan</span>
	                                    </div>
	                                </div>
	                            </li>
	                            <li class="d-flex no-block card-body border-top">
	                                <i class="fa fa-gift w-30px m-t-5"></i>
	                                <div>
	                                    <a href="#" class="m-b-0 font-medium p-0">Congratulation Maruti, Happy Birthday</a>
	                                    <span class="text-muted">But already everything was solved. It will ...</span>
	                                </div>
	                                <div class="ml-auto">
	                                    <div class="tetx-right">
	                                        <h5 class="text-muted m-b-0">11</h5>
	                                        <span class="text-muted font-16">Jan</span>
	                                    </div>
	                                </div>
	                            </li>
	                            <li class="d-flex no-block card-body border-top">
	                                <i class="fa fa-plus w-30px m-t-5"></i>
	                                <div>
	                                    <a href="#" class="m-b-0 font-medium p-0">Maruti is a Responsive Admin theme</a>
	                                    <span class="text-muted">But already everything was solved. It will ...</span>
	                                </div>
	                                <div class="ml-auto">
	                                    <div class="tetx-right">
	                                        <h5 class="text-muted m-b-0">19 </h5>
	                                        <span class="text-muted font-16">Jan</span>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	
	                    <div class="card">
	                        <div class="card-body">
	                            <h5 class="card-title m-b-0">결재함</h5>
	                        </div>
	                        <table class="table">
	                            <thead>
	                                <tr>
	                                    <th scope="col">Description</th>
	                                    <th scope="col">Status</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>Making The New Suit</td>
	                                    <td class="text-success">Progress</td>
	                                </tr>
	                                <tr>
	                                    <td>Luanch My New Site</td>
	                                    <td class="text-warning">Pending</td>
	                                </tr>
	                                <tr>
	                                    <td>Maruti Excellant Theme</td>
	                                    <td class="text-danger">Cancled</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	
	                <!-- column -->
	                <div class="col-lg-6">
	                    <!-- Card -->
	                    <div class="card">
	                        <div class="card-body">
	                            <h4 class="card-title">To Do List</h4>
	                            <div class="todo-widget scrollable" style="height:450px;">
	                                <ul class="list-task todo-list list-group m-b-0" data-role="tasklist">
	                                    <li class="list-group-item todo-item" data-role="task">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customCheck">
	                                            <label class="custom-control-label todo-label" for="customCheck">
	                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span> <span class="badge badge-pill badge-danger float-right">Today</span>
	                                            </label>
	                                        </div>
	                                        <div class="item-date"> 26 jun 2017</div>
	                                    </li>
	                                    <li class="list-group-item todo-item" data-role="task">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
	                                            <label class="custom-control-label todo-label" for="customCheck1">
	                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing</span><span class="badge badge-pill badge-primary float-right">1 week </span>
	                                            </label>
	                                        </div>
	                                        <div class="item-date"> 26 jun 2017</div>
	                                    </li>
	                                    <li class="list-group-item todo-item" data-role="task">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
	                                            <label class="custom-control-label todo-label" for="customCheck2">
	                                                <span class="todo-desc">Give Purchase report to</span> <span class="badge badge-pill badge-info float-right">Yesterday</span>
	                                            </label>
	                                        </div>
	                                        <div class="item-date"> 26 jun 2017</div>
	                                    </li>
	                                    <li class="list-group-item todo-item" data-role="task">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
	                                            <label class="custom-control-label todo-label" for="customCheck3">
	                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing </span> <span class="badge badge-pill badge-warning float-right">2 weeks</span>
	                                            </label>
	                                        </div>
	                                        <div class="item-date"> 26 jun 2017</div>
	                                    </li>
	                                    <li class="list-group-item todo-item" data-role="task">
	                                        <div class="custom-control custom-checkbox">
	                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
	                                            <label class="custom-control-label todo-label" for="customCheck4">
	                                                <span class="todo-desc">Give Purchase report to</span> <span class="badge badge-pill badge-info float-right">Yesterday</span>
	                                            </label>
	                                        </div>
	                                        <div class="item-date"> 26 jun 2017</div>
	                                    </li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- ============================================================== -->
	            <!-- Recent comment and chats -->
	            <!-- ============================================================== -->
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		<jsp:include page="common/footer.jsp"/>
		</div>
	</div>
</body>
</html>