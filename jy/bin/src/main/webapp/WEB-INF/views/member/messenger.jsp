<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 .clock {
	    top: 120%;
	    left: 30%;
	    transform: translateX(-50%) translateY(-50%);
	    color: black;
	    font-size: 20px;
	    font-family: Orbitron;
	    letter-spacing: 7px;
	    float:right;
	
	}
</style>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="../common/navigator.jsp"/>
		
		
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
	                            <li class="breadcrumb-item active" aria-current="page">List</li>
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
	          
                        <div class="card" style="width: 400px; float: left;margin-left: 5%;">
                            <div class="card-body">
                                <h5 class="card-title">쪽지 보내기</h5>
                                <div class="form-group row">
                                    <label class="col-md-3 m-t-15">수신자</label>
                                    <div class="col-md-9">
                                        <input style="margin-top:10px;" type="search" class="form-control form-control-sm" placeholder="" aria-controls="zero_config">
                                    </div>
                                </div>
                              
                                <div class="form-group row">
                                    <label class="col-md-3">첨부 파일</label>
                                    <div class="col-md-9">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                            <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                            <div class="invalid-feedback">Example invalid custom file feedback</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">내용</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control" style="height: 214px;"></textarea>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="button" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                             <div class="card" style="width:600px;float:right; margin-right: 5%;">
                            <div class="card-body" >
                                <h4 class="card-title m-b-0">받은 쪽지함</h4>                                
                            </div>
                            <div class="comment-widgets scrollable" style="height: 450px;" >
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row m-t-0">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                    
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFVmrhZZ6gwYK1aWBh3SYhmpjwqtfBBQ0oxHqwxNWvzVqaCdU-&usqp=CAU" alt="user" width="50" class="rounded-circle"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">김시욱 </h6>
                                        <span class="m-b-15 d-block">오늘 회식할까요? </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right">April 14, 2016</span> 
                                            <button type="button" class="btn btn-danger btn-sm">삭제하기</button>
                                        </div>
                                    </div>
                                </div>
                                
                                <ul style="margin-left: 22%;" class="pagination">
                                    <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                    <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                    <li class="paginate_button page-item next" id="zero_config_next"><a href="#" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                </ul>                         
                        </div>
                      
                        </div>
                        </div>
                
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

               
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		<jsp:include page="../common/footer.jsp"/>
		</div>
	</div>
	
</body>
</html>