<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.request.contextPath }/resources/images/favicon.png">
<!-- alertifyJs -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Matrix Template - The Ultimate Multipurpose admin template</title>
<!-- Custom CSS -->
<link href="${ pageContext.request.contextPath }/resources/css/style.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${ !empty sessionScope.msg }">
         <script>
            alertify.alert("${sessionScope.msg}"); // alert("회원가입성공");
         </script>
         <c:remove var="msg" scope="session"/>
    </c:if>
      
	<div class="main-wrapper">
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
            <div class="auth-box bg-dark border-top border-secondary">
            	
            	<!-- 로그인 -->
                <div id="loginform">
                    <div class="text-center p-t-20 p-b-20">
                        <span class="db">
                            <!-- Dark Logo icon -->
                            <img src="${ pageContext.request.contextPath }/resources/images/logo-icon.png" alt="homepage" class="light-logo"/>
                            
                            <!-- Logo text -->
                            <span style="margin-left: 20px; vertical-align: middle; font-size: larger; font-weight: bolder; color: white;">
                                J&Y CO.
                            </span>
                        </span>
                    </div>
                    <!-- Form -->
                    <form class="form-horizontal m-t-20" id="loginform" action="login.me" method="post">
                        <div class="row p-b-30">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Enter ID" aria-label="Username" aria-describedby="basic-addon1" id="empNo" name="empNo" required="">
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" placeholder="Enter Password" aria-label="Password" aria-describedby="basic-addon1" id="pwd" name="pwd" required="">
                                </div>
                            </div>
                        </div>
                        <div class="row border-top border-secondary">
                            <div class="col-12">
                                <div class="form-group">
                                    <div class="p-t-20">
                                        <button class="btn btn-info" id="to-recover" type="button"><i class="fa fa-lock m-r-5"></i> 비밀번호 찾기</button>
                                        <button class="btn btn-success float-right" type="submit">로그인</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                
                
                
                
                <div id="recoverform">
                    <div class="text-center">
                        <span class="text-white">아이디를 입력하세요.</span>
                    </div>
                    <div class="row m-t-20">
                        <!-- Form -->
                        <form class="col-12">
                            <!-- email -->
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-danger text-white" id="basic-addon1"><i class="ti-email"></i></span>
                                </div>
                                <input type="text" class="form-control form-control-lg" placeholder="ID" id="empNo" name="empNo" aria-describedby="basic-addon1">
                            </div>
                            <!-- pwd -->
                            <div class="row m-t-20 p-t-20 border-top border-secondary">
                                <div class="col-12">
                                    <a class="btn btn-success" href="#" id="to-login" name="action">로그인하기</a>
                                    <button class="btn btn-info float-right" type="button" name="action" id="searchBtn" data-toggle="modal">확인</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
                
                <div id="pwdModal" class="modal fade" role="dialog">
                	<div class="modal-dialog modal-sm">
                		<!-- Modal content-->
					    <div class="modal-content">
					    	<div class="modal-header">
					      		<button type="button" class="close" data-dismiss="modal">x</button>
					        	<h4><b>비밀번호</b></h4>
					      	</div>
					      	<div class="modal-body">
					      	</div>
					      	<div class="modal-footer">
					        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					      	</div>
					    </div>
					
					 </div>
				</div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
    </div>
    
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="${ pageContext.request.contextPath }/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${ pageContext.request.contextPath }/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>

	    $('[data-toggle="tooltip"]').tooltip();
	    $(".preloader").fadeOut();
	    // ============================================================== 
	    // Login and Recover Password 
	    // ============================================================== 
	    $('#to-recover').on("click", function() {
	        $("#loginform").slideUp();
	        $("#recoverform").fadeIn();
	    });
	    $('#to-login').click(function(){
	        
	    	$("#recoverform").hide();
	        $("#loginform").fadeIn();
	    });
	    
	    $('#searchBtn').click(function(){
	    	$.ajax({
	    		type:"POST",
	    		url:"searchPwd.me",
	    		data:{empNo:$("#empNo").val()},
	    		success:function(pwd){
	    			console.log(pwd);
	    			// $(".modal-body").text(data);
	    		}, error:function(){
	    			console.log("ajax 통신 실패");
	    		}
	    	});
	    });
    </script>
</body>
</html>