<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	<!-- Page wrapper  -->
	<!-- ============================================================== -->
	<div class="page-wrapper">
	
	
	    <!-- ======***** SUJIN ******======= -->
	
	    <!-- ============================================================== -->
	    <!-- Bread crumb and right sidebar toggle -->
	    <!-- ============================================================== -->
	    <div class="page-breadcrumb">
	        <div class="row">
	            <div class="col-12 d-flex no-block align-items-center">
	                <h4 class="page-title">Circular</h4>
	                <div class="ml-auto text-right">
	                    <nav aria-label="breadcrumb">
	                        <ol class="breadcrumb">
	                            <li class="breadcrumb-item"><a href="main.do">Home</a></li>
	                            <li class="breadcrumb-item active" aria-current="page">Circular</li>
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
	            <div class="col-md-12">
	                <div class="card">
	                    <form class="form-horizontal">
	                        <div class="card-body">
	                            <h4 class="card-title">회람함</h4>
	                            <div class="table-responsive">
	                                <table id="circularTable" class="table table-hover" style="text-align:center;">
	                                    <thead>
	                                        <tr>
	                                            <th scope="col">#</th>
	                                            <th scope="col">문서번호</th>
	                                            <th scope="col">양식명</th>
	                                            <th scope="col">문서제목</th>
	                                            <th scope="col">작성자</th>
	                                            <th scope="col">작성일자</th>
	                                            <th scope="col">회람대상</th>
	                                            <th scope="col">시작날짜</th>
	                                            <th scope="col">종료날짜</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="c" items="${list}">
	                                    		<tr>
		                                            <th scope="row">#</th>
		                                            <td>${c.circularNo}</td>
		                                            <td>${c.type}</td>
		                                            <td>${c.title}</td>
		                                            <td>${c.name}</td>
		                                            <td>
		                                            	<fmt:formatDate value="${c.createDate}" pattern="yyyy-MM-dd HH:mm"/>
		                                            </td>
		                                            <td>${c.deName eq '' || c.deName eq null ? '전사원' : c.deName }</td>
		                                            <td>
		                                            	<fmt:formatDate value="${c.beginDate}" pattern="yyyy-MM-dd HH:mm"/>
		                                            </td>
		                                            <td>
		                                            	<fmt:formatDate value="${c.endDate}" pattern="yyyy-MM-dd HH:mm"/>
		                                            </td>
	                                            </tr>
	                                    	</c:forEach>
	                                        
	                                    </tbody>
	                                </table>
	
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	        
	    </div>
	
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

    <!-- Page (+sujin)-->
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/DataTables/datatables.min.js"></script>

    <script>
       
        /****************************************
         *       Basic Table                   *
         ****************************************/
         $('#circularTable').DataTable({
            "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
         });


        $(function(){
        	$("#circularTable tbody tr").click(function(){
        		location.href="selectOne.cir?circularNo="+$(this).children().eq(1).text();
        	})
        })
        
    </script>
    
	
</div>

</body>
</html>