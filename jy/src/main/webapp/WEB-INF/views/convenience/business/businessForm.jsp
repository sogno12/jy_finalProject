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

              <!--==============================================hajin==================================================-->

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title">회의실 예약</h4>
        
                                    <hr>
        
                                    <div class="form-group row">
                                        <label class="text-right col-md-3 m-t-15">회의실</label>
                                        <div class="col-md-3">
                                            <select class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                                <option>Select</option>
                                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                                    <option value="AK">1층어쩌구실</option>
                                                    <option value="HI">2층회의실</option>
                                                </optgroup>
                                                <optgroup label="Pacific Time Zone">
                                                    <option value="CA">3층회의실</option>
                                                    <option value="NV">Nevada</option>
                                                    <option value="OR">Oregon</option>
                                                    <option value="WA">Washington</option>
                                                </optgroup>
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">인원</label>
                                        <div class="col-sm-3">
                                            <input type="number" name="businessPNo" class="form-control" style="display:inline-block; width:100px;">
                                        </div>
                                    </div>
                                        
                                    
                                    <label class="text-right col-md-3 m-t-15" style="display: inline-block;">사용 일시</label>
                                    <div class="input-group col-md-4" style="display: inline-block;">
                                        <input type="text" class="form-control datepicker-autoclose" placeholder="mm/dd/yyyy" style="width: 120px; display: inline-block;">
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                        <select class="form-control" style="display:inline-block; width: 150px;">
                                            <option>09:00~11:00</option>
                                            <option>11:00~13:00</option>
                                            <option>13:00~15:00</option>
                                            <option>15:00~17:00</option>
                                            <option>17:00~19:00</option>
                                        </select>
                                    </div>
                                 
                                 <br><br>
                                </div>
                                <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="button" class="btn btn-info" id="businessbtn">Submit</button>
                                        <button type="submit" class="btn btn-danger">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	
	
	<jsp:include page="../../common/footer.jsp"/>
	</div>
</body>
</html>