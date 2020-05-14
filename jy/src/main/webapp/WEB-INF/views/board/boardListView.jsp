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
    .accordion-row {
        cursor: pointer;
    }

    .accordion {
        display: none;
        width: 100%;
    }

    .accordion-content {
         display: none;
    }

    tbody > tr:hover {
        background-color:#f5f5f5;
    }
    table{
       padding-left: 50px;
    }
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

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">사내 게시판</h5>
                      <label style="margin-left: 80%;margin-top: -5%;">Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="zero_config"></label>
                            </div>
                            <table class="table" class="table table-hover" >

                                <thead style="padding-left: 150px;">
                                    <tr>
                                        <strong>
                                            <th style="padding-left: 50px;">번호</th>
                                            <th style="padding-left: 45px;">제목</th>
                                            <th>글쓴이</th>
                                            <th style="padding-left: 10px;">부서</th>
                                            <th style="padding-left: 25px;">날짜</th>
                                            <th>조회수</th>
                                        </strong>
                                        </tr>
                                </thead>
                                <tbody>
                                    <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>${ list[0].boardNo }</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>
                                      <tr class="accordion-row">
                                        <td style="padding-left: 60px;">1</td>
                                        <td>오늘도 코로나 조심!</td>
                                        <td>이요한</td>
                                        <td>인사과</td>
                                        <td>02/04/2018</td>
                                        <td style="padding-left: 20px;">4</td>
                                    </tr>
                                    <tr class="accordion">
                                        <td colspan="6">
                                            <center>
                                          <div class="accordion-content" style="width: 60%; height:40%;">                                        
                                            오늘도 코로나때문에 고생이 많으시겠지만 오늘하루도 힘내시고! 내일은 더열심히 일해요! 요즘같은경기에
                                            고생해주셔서 너무감사합니다. 다들 힘드시겠지만 조금만 더 힘내고 매출 200% 상승시켜봅시다!
                                          </div>
                                        </center>
                                        </td>
                                      </tr>

                                </tbody>
                            </table>
                           <ul style="margin-left: 35%;" class="pagination">
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
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script>
        $(".accordion-row").on("click",function() {
                var accordionRow = $(this).next(".accordion");
                if (!accordionRow.is(":visible")) {
                accordionRow.show().find(".accordion-content").slideDown();
                } else {
                accordionRow.find(".accordion-content").slideUp(function() {
                    if (!$(this).is(':visible')) {
                    accordionRow.hide();
                    }
                });
                }
            });
    </script>
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="../../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="../../assets/libs/flot/excanvas.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.time.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="../../assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../../dist/js/pages/chart/chart-page-init.js"></script>
    
    </div>

</body>

</html>