<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file=".././modules/boardHead.jsp" %>
</head>
<body>
	<%@include file=".././modules/boardModal.jsp" %>
	<%@include file=".././modules/topMenu.jsp" %>	  
<br/><br/><br/><br/><br/><br/><br/><br/>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading">Search Box</div>
					<div class="panel-body">
						<div class="form-inline">
							<div class="row">
								<div class="col-md-10">
									<select id="searchColumn" class="selectpicker">
										<option value="boardTitle">제목</option>
										<option value="userName">작성자</option>
									</select> <input type="text" id="searchText" class="form-control">
									<button class="btn btn-default" id="searchBtn">검색</button>
								</div>
								<div class="col-md-2" style="text-align: right">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#yboardEditModal">등록</button>								
									<button class="btn btn-danger" id="btnYboardDelete">삭제</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Table -->
					<table class="table table-striped" id="dataTable">
						<thead>
							<tr>
								<th><input type="checkbox" id="allCheck"/></th>
								<th>ID</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 페이징처리 부분  -->
			<div class="col-md-8">
				<ul class="pagination" id="yboardPagination">
				</ul>
			</div>
		</div>
	</div>

</body>
<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="resources/bower_components/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="resources/bower_components/bootstrap-paginator/build/bootstrap-paginator.min.js"></script>
	<script src="resources/bower_components/bootstrapValidator/dist/js/bootstrapValidator.min.js"></script>
	<script src="resources/js/jquery/yboard.js"></script>
</html>