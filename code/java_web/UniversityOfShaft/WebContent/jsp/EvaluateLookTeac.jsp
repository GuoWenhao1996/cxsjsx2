<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>评价</title>

<link rel="shortcut icon" href="${path}assets/img/icon_e.ico" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${path}assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="${path}assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="${path}assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="${path}assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="${path}assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="${path}assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body onload="hideOrShow()">
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">评价</h1>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li><a href="/UniversityOfShaft/listAssessTeac.do">评价</a></li>
					<!--<li class="active">数据</li>-->
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-content">
								<div class="clearBoth">
									<br />
								</div>
								<div id="test4" class="col s12">
									<div class="card">
										<div class="card-action">
											<h4>
												<b>以下是他人对该同学的评价</b>
											</h4>
										<a href="/UniversityOfShaft/listAssessTeac.do"
													class="btn btn-primary dropdown-toggle"><i
													class="material-icons left" >replay</i>返回</a>
										</div>
										<div class="card-content">
											<div class="table-responsive">
												<table 
													class="table table-striped table-bordered table-hover"
													id="dataTables-TeacherEvaluate-1">
													<thead>
														<tr>
															<th>时间</th>
															<th>评价</th>
															<th>姓名</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="as0" items="${sAA}" varStatus="vs">
															<tr class="odd gradeX">
																<td width="15%">${sAA[vs.index][0]}</td>
																<td width="40%">${sAA[vs.index][1]}</td>
																<td width="10%">${sAA[vs.index][2]}</td>
																<td width="15%">${sAA[vs.index][3]}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>

										</div>
									</div>
								</div>
								<div class="clearBoth">
									<br />
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.col-lg-12 -->
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
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="${path}assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="${path}assets/js/bootstrap.min.js"></script>

	<script src="${path}assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="${path}assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="${path}assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="${path}assets/js/morris/morris.js"></script>


	<script src="${path}assets/js/easypiechart.js"></script>
	<script src="${path}assets/js/easypiechart-data.js"></script>

	<script src="${path}assets/js/Lightweight-Chart/jquery.chart.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${path}assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="${path}assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-TeacherEvaluate-1').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="${path}assets/js/custom-scripts.js"></script>

</body>

</html>
