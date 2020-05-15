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
                                <h5 class="card-title m-b-0">게시글 작성</h5>
                      <a class="btn btn-secondary" style="float:right" href="boardList.bo">목록으로</a>
                            </div>
                            
                        <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
						<table id="contentArea" align="center" class="table">
							<tr>
								<th width="100">제목</th>
					            <td colspan="3"><input type="text" style="width:500px;" class="form-control" name="title" required></td>
					            </tr>
					                <input type="hidden" id="writer" class="form-control" name="memberNo" readonly value="${ loginUser.memberNo }">
					
					                <tr>
					                    <th>내용</th>
					                    <td colspan="3"><textarea class="form-control" style="resize:none; width:80%; height:200px; padding:10px;" name="content" required></textarea></td>
					                </tr>
					                
					     </table>
					     
					        <div align="center" style="margin-bottom:100px;">
                    			<button type="submit" class="btn btn-primary">등록하기</button>
                    			<button type="reset" class="btn btn-danger">취소하기</button>
                			</div>
					     
					     </form>

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