<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basePath);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>成绩查询</title>

<link rel="shortcut icon" href="assets/img/icon_rap.ico" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">成绩查询</h1>
				<ol class="breadcrumb">
					<li><a href="${path}jsp/teacher/tnavigation.jsp">主页</a></li>
                    <li><a href="/UniversityOfShaft/listofclass.do">学生成绩</a></li>
                    <li class="active">成绩查询</li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="card">
							<div class="card-action">成绩查询</div>
							<div class="card-content">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th class="center">课程名</th>
												<th class="center">学期</th>
												<th class="center">成绩</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="g" items="${data}" varStatus="vs" >
											<tr class="odd gradeX">
												<td class="center">${g.getSC_CourseName() }</td>
												<td class="center">${g.getSC_Term() }</td>
												<td class="center">${g.getSC_Score() }</td>
											</tr>
											</c:forEach>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>
				<footer>
					<p>
						Copyright &copy; 2017.Team of DXZ All rights reserved.Developed by
						students of <a target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>.
					</p>
				</footer>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
		<!-- /. WRAPPER  -->
		<!-- JS Scripts-->
		<!-- jQuery Js -->
		<script src="assets/js/jquery-1.10.2.js"></script>

		<!-- Bootstrap Js -->
		<script src="assets/js/bootstrap.min.js"></script>

		<script src="assets/materialize/js/materialize.min.js"></script>

		<!-- Metis Menu Js -->
		<script src="assets/js/jquery.metisMenu.js"></script>
		<!-- Morris Chart Js -->
		<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
		<script src="assets/js/morris/morris.js"></script>


		<script src="assets/js/easypiechart.js"></script>
		<script src="assets/js/easypiechart-data.js"></script>

		<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
		<!-- DATA TABLE SCRIPTS -->
		<script src="assets/js/dataTables/jquery.dataTables.js"></script>
		<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
		<script>
			$(document).ready(function() {
				$('#dataTables-example').dataTable();
			});
		</script>
		<!-- Custom Js -->
		<script src="assets/js/custom-scripts.js"></script>
</body>
</html>
