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
		
		<jsp:include page="../../common/navigator.jsp"/>
		
		 <div class="page-wrapper">
	            <div class="page-breadcrumb">
	                <div class="row">
	                    <div class="col-12 d-flex no-block align-items-center">
	                        <h4 class="page-title">Convenience</h4>
	                        <div class="ml-auto text-right">
	                            <nav aria-label="breadcrumb">
	                                <ol class="breadcrumb">
	                                    <li class="breadcrumb-item"><a href="main.do">Home</a></li>
	                                    <li class="breadcrumb-item active" aria-current="page">Convenience</li>
	                                </ol>
	                            </nav>
	                        </div>
	                    </div>
	                </div>
	            </div>
					<div class="container-fluid">
						 <div class="row">
				                    <div class="col-md-12"  style="background:#F7F7F7">
				                
				                        <div>
				                            <div>
				                                <div style="text-align:center; height:400px; vertical-align:center;" >
				                                	<br><br>
													 <img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/Success.gif" alt="" width="500px;" height="280px;"/>
				                                    <br>
				                                    <h2>${ msg }</h2>
				                                </div>
				                            </div>
				                           
				                        </div>
				                    </div>
				            </div>
					</div>
				</div>
			</div>

</body>
</html>