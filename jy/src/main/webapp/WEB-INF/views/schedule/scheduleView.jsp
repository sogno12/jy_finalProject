<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom CSS -->
<link href="${ pageContext.servletContext.contextPath }/resources/assets/libs/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" />
<link href="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/calendar/calendar.css" rel="stylesheet" />
</head>
<body>
	
	<div id="main-wrapper">
	
		<jsp:include page="../common/navigator.jsp"/>
		
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
                        <h4 class="page-title">Calendar</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="${ pageContext.servletContext.contextPath }/WEB-INF/views/main.jsp">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Calendar</li>
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
                            <div class="">
                                <div class="row">
                                	
                                	<!-- calendar -->
                                    <div class="col-lg-9">
                                        <div class="card-body b-l calender-sidebar">
                                            <div id="calendar"></div>
                                        </div>
                                    </div>
                                    
                                    <!-- to do list -->
                                    <div class="col-lg-3 border-right p-r-0">
                                        <div class="card-body border-bottom">
                                            <h4 class="card-title m-t-30 m-b-30"><i class="mdi mdi-border-color"> To Do List <a href="javascript:void(0)" data-toggle="modal" data-target="#add-new-todo" class="m-l-20" style="color: palevioletred;">+</a></i></h4>
                                            <div class="todo-widget scrollable" style="height:450px;">
                                                <ul class="list-task todo-list list-group m-b-0" data-role="tasklist">
                                                    <li class="list-group-item todo-item" data-role="task">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                                            <label class="custom-control-label todo-label" for="customCheck">
                                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item todo-item" data-role="task">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                            <label class="custom-control-label todo-label" for="customCheck1">
                                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item todo-item" data-role="task">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                            <label class="custom-control-label todo-label" for="customCheck2">
                                                                <span class="todo-desc">Give Purchase report to</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item todo-item" data-role="task">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                            <label class="custom-control-label todo-label" for="customCheck3">
                                                                <span class="todo-desc">Lorem Ipsum is simply dummy text of the printing </span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item todo-item" data-role="task">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                            <label class="custom-control-label todo-label" for="customCheck4">
                                                                <span class="todo-desc">Give Purchase report to</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <a href="javascript:void(0)" data-toggle="modal" data-target="#add-new-event" class="btn m-t-20 btn-info btn-block waves-effect waves-light">
                                                            <i class="ti-plus"></i> 공유 일정 추가
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- BEGIN MODAL -->
                <div class="modal none-border" id="my-event">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title"><strong>Add Event</strong></h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Add Event -->
                <div class="modal fade none-border" id="add-new-event">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title"><strong>일정</strong> 추가</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="control-label">제목</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">날짜</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="datepicker-autoclose" placeholder="mm/dd/yyyy">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 m-t-20">
                                            <label class="control-label">내용</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-info waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Add ToDo -->
                <div class="modal fade none-border" id="add-new-todo">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title"><strong>할 일</strong> 추가</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="control-label">제목</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">날짜</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="datepicker-autoclose" placeholder="mm/dd/yyyy">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 m-t-20">
                                            <label class="control-label">내용</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-info waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MODAL -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
		
		<jsp:include page="../common/footer.jsp"/>
		
		</div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
		
	</div>
	
	<!-- this page js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/moment/min/moment.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/fullcalendar/dist/fullcalendar.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/pages/calendar/cal-init.js"></script>
    <!-- datePicker -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script>
        /*datepicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        
        var todoDate='';
        /* full calendar 날짜 받아오기 */
         $('#calendar').fullCalendar({ 
		     dayClick: function(date, jsEvent, view) {
		         todoDate = date._d;
		      }
		  });
        
    </script>
</body>
</html>