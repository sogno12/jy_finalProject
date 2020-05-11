<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	
	    <div id="main-wrapper">
		
		<jsp:include page="../common/navigator.jsp"/>
        

        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
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
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Library</li>
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
                                <h4 class="card-title m-b-0">채팅목록</h4>
                            </div>
                            <div style="margin:20px;">
                                <button type="button" class="btn btn-light btn-sm">최신순</button>
                                <button type="button" class="btn btn-light btn-sm">즐겨찾기</button>
                                <form style="float:right">
                                    <input type="text" style="width:100px; padding-left:5px" placeholder="목록검색">
                                    <button type="submit" style="background:#ffffff; outline:0; border:none">
                                        <i class="fas fa-search" style="float:right;"></i>
                                    </button>
                                </form>
                            </div>
                            <ul class="list-style-none">
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">박영석</a>
                                        <span class="text-muted">신규 채팅내용1</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.14</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none" onclick="confirm('목록에서 삭제하시겠습니까?')"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">여민진</a>
                                        <span class="text-muted">신규 채팅내용2</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.13</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">이요한</a>
                                        <span class="text-muted">신규 채팅내용3</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.12</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">최수진</a>
                                        <span class="text-muted">신규 채팅내용 ...</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.11</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">이하진</a>
                                        <span class="text-muted">신규 채팅내용 ...</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.10</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                                <li class="d-flex no-block card-body">
                                    <i class="m-r-10 mdi mdi-account-circle fa-2x"></i>
                                    <div>
                                        <a href="#" class="m-b-0 font-medium p-0">방제목</a>
                                        <span class="text-muted">신규 채팅내용 ...</span>
                                    </div>
                                    <div class="ml-auto" style="margin-right:20px;">
                                        <div class="tetx-right">
                                            <h6 class="text-muted m-b-0">04.09</h6>
                                            <span class="text-muted font-12" style="float:right">14:54</span>
                                        </div>
                                    </div>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-cog"></i></button>
                                    <button style="height:30px; width:30px; background:#ffffff; outline:0; border:none"><i class="fas fa-times-circle" style="color:red"></i></button>
                                </li>
                            </ul>
                            <nav aria-label="..." style="margin:auto; margin-top:50px">
                                <ul class="pagination">
                                  <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                  </li>
                                  <li class="page-item active">
                                    <a class="page-link" href="#">1</a>
                                  </li>
                                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                                  <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                  </li>
                                </ul>
                            </nav>
                            <br><br>
                        </div>
                        

					<!-- 대화상대 선택 -->

                    </div>
                    <div class="col-lg-6">
                        <!-- card new -->
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title m-b-0">1:1 채팅</h4>
                            </div>
                            <br>
                            <div style="padding-left:30px">

                                <div><h5 class="card-title m-b-0">대화상대 선택</h5></div>

                                <br>
                                
                                <form id="selectMember" method="get">
                                
                                <!-- 부서 선택 -->
                                
                                <div class="btn-group" style="width:50px; float:left; margin-right:20px;">
                                    <button type="button" class="btn btn-info dropdown-toggle" 
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="selectDept();">부서</button>
                                    <div class="dropdown-menu" id="selectDept">

                                    </div>
                                </div><!-- /btn-group -->
                                
                                <input type="text" style="width:100px; float:left; margin:5px" value="" id="deptInput" name="deptInput">
                                
                                <script>
                                	function selectDept(){
                                		
                                		$.ajax({
                                			url:"dept.ch",
                                			type:"get",
                                			success:function(list){
                                				var value="";
                                				
                                				for(var i in list){
                                					value += "<a class='dropdown-item' href='#' onclick='clickDept(this);'>" + list[i].name + "</a>";
                                				}
                                				
                                				$("#selectDept").html(value);
                                				
                                			},
                                			error:function(){
                                				console.log("실패");
                                			}
                                		});
                                		
                                	}

                                	function clickDept(){
                                		$("#deptInput").val("");
                                	}
                                	
                                </script>

                                <br><br>
                                
                                <!-- 이름 선택 -->

                                <div class="btn-group" style="width:50px; float:left; margin-right:20px">
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">이름</button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">여민진 부장</a>
                                        <a class="dropdown-item" href="#">이요한 사원</a>
                                        <a class="dropdown-item" href="#">박영석 사원</a>
                                        <a class="dropdown-item" href="#">이하진 사원</a>
                                        <a class="dropdown-item" href="#">최수진 사원</a>
                                    </div>
                                </div><!-- /btn-group -->
                                <input type="text" style="width:100px; float:left; margin:5px; margin-bottom:50px;" value="">

                                <br><br><br><br>


                                <div>
                                    <div style="float:left">
                                        <h5 class="card-title m-b-0"></h5>
                                        <h5 class="card-title m-b-0"></h5>
                                    </div>
                                    <div style="float:left"><button type="submit" class="btn btn-info btn-sm" style="margin-left:40px; margin-bottom:50px;">채팅시작</button></div>
                                </div>
                                
                                </form>

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
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>

</body>
</html>