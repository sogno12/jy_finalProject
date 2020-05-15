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
	table *{margin:5px;}
    table{width:100%;}
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
                        <div class="card" style="padding-left:10%; padding-right:20%;">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">사내 게시판</h5>
                      <a class="btn btn-secondary" style="float:right" href="boardList.bo">목록으로</a>
                            </div>
						<table id="contentArea" align="center" class="table">
							<tr>
								<th width="100">제목</th>
					            <td colspan="3">${ b.title }</td>
					            </tr>
					            <tr>
					            	<th>작성자</th>
					                <td>${ b.name } ${ b.positionName }</td>
					                <th style="width:100px">작성일</th>
					                <td>${ b.writtenDate }</td>
					            </tr>
					
					                <tr>
					                    <th>내용</th>
					                    <td colspan="3"><textarea class="form-control" readonly style="resize:none; width:80%; height:300px; padding:10px; background:white;">${ b.content }</textarea></td>
					                </tr>
					                
					            </table>
					            
		            		<c:if test="${ loginUser.memberNo eq b.memberNo }">
	        					<div align="center" style="margin:10px 100px 100px 10px;">
	            					<button class="btn btn-primary" onclick="postFormSubmit(2);">수정하기</button>
	            					<button class="btn btn-danger" onclick="postFormSubmit(1);">삭제하기</button>
	        					</div>
	        
	        					<form id="postForm" action="" method="post">
	        						<input type="hidden" name="bno" value="${ b.boardNo }">
	        					</form>
	        
				            <script>
				            	function postFormSubmit(num){
				            		if(num == 1){	// 삭제하기 클릭시
				            			$("#postForm").attr("action", "delete.bo");
				            		}else{		// 수정하기 클릭시
				            			$("#postForm").attr("action", "updateForm.bo");
				            		}
				            		
				           			$("#postForm").submit();
				           			
				            	}
				            </script>
		            
		            		</c:if>

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
	
    
    </div>
    
    </div>
    
</body>
</html>