<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	/*
    .accordion-row {cursor: pointer;}
    .accordion {display: none;width: 100%;}
    .accordion-content {display: none;}
    */
    tbody > tr:hover {background-color:#f5f5f5;}
    table{padding-left: 50px;}
</style>
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
            <!-- Bread crumb and right sidebar toggle 테스트 -->
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

                <div class="row">
                    <div class="col-12">
                        <div class="card" style="padding-left:10%; padding-right:10%;">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">사내 게시판</h5>
                                
                      <a class="btn btn-secondary" style="float:right; margin-top:20px" href="enrollForm.bo">작성하기</a>          
                      
                      <label style="margin-left: 80%;">Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="zero_config"></label>
                            </div>
                            <table class="table" class="table table-hover" id="boardList">

                                <thead style="padding-left: 150px;">
                                    <tr>
                                        <strong>
                                            <th style="padding-left: 50px;">번호</th>
                                            <th style="padding-left: 55px;">제목</th>
                                            <th style="padding-left: 30px;">글쓴이</th>
                                            <th style="padding-left: 20px;">부서</th>
                                            <th style="padding-left: 35px;">날짜</th>
                                            <th style="padding-left: 10px;">조회수</th>
                                        </strong>
                                        </tr>
                                </thead>
                                <tbody>
			                	<c:forEach items="${ list }" var="b">
				                    <tr>
				                        <td style="padding-left: 60px;">${ b.boardNo }</td>
				                        <td>${ b.title }</td>
				                        <td>${ b.name } ${ b.positionName }</td>
				                        <td>${ b.departmentName }</td>
				                        <td>${ b.writtenDate }</td>
				                        <td style="padding-left: 20px;">${ b.views }</td>
				                    </tr>
			                    </c:forEach>


                                </tbody>
                            </table>
                           <ul style="margin-left: 35%; margin-top:50px;" class="pagination">
                                <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                <li class="paginate_button page-item next" id="zero_config_next"><a href="#" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                            </ul>
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
            <jsp:include page="../common/footer.jsp"/>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
	
	<script>
		$(function(){
			$("#boardList tbody tr").click(function(){
				location.href = "detail.bo?bno=" + $(this).children().eq(0).text();
			});
		});
	</script>
	
	
	</div>
    
    </div>

</body>

</html>