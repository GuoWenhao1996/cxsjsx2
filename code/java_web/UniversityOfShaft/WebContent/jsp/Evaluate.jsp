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
					<li><a href="#">评价</a></li>
					<!--<li class="active">数据</li>-->
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-content">
								<div class="col">
									<ul class="tabs">
										<li class="tab col s3"><a class="active" href="#test1">教师寄语</a></li>
										<li class="tab col s3"><a href="#test2">同学印象</a></li>
										<li class="tab col s3 "><a href="#test3">自我评价</a></li>
										<li class="tab col s3"><a href="#test4">参与评价</a></li>
									</ul>
								</div>
								<div class="clearBoth">
									<br />
								</div>

								<div id="test1" class="col s12">
									<div class="card">
										<div class="card-action">
											<h4>
												<b>老师对你的评价</b>
											</h4>
										</div>
										<div class="card-image">
											<ul class="collection">
												<c:forEach var="as0" items="${aT}" varStatus="vs">
													<li class="collection-item avatar"><i
														class="material-icons circle green">perm_identity</i> <span
														class="title">${as0.getA_PersonNo()}</span>
														<p>
															${as0.getA_DataTime()} <br> <b>${as0.getA_Context()}</b>
														</p> <i class="material-icons secondary-content">多媒体技术</i></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div id="test2" class="col s12">
									<div class="card">
										<div class="card-action">
											<h4>
												<b>同学对你的评价</b>
											</h4>
										</div>
										<div class="card-image">
											<ul class="collection">
												<c:forEach var="as0" items="${aS}" varStatus="vs">
													<li class="collection-item avatar"><i
														class="material-icons circle green">perm_identity</i> <span
														class="title">${as0.getA_PersonNo()}</span> 计科一班
														<p>
															${as0.getA_DataTime()} <br> <b>${as0.getA_Context()}</b>
														</p> <i class="material-icons secondary-content">室友</i></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div id="test3" class="col s12">
									<div class="card">
										<div class="card-action">
											<h4>
												<b>自我评价</b>
											</h4>
										</div>
										<div class="card-content">
											<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sA}</p>
											<div style="margin-top: 20px; margin-left: 10px">
												<a onclick="hideOrShow()"
													class="waves-effect waves-light btn"><i
													class="material-icons left">mode_edit</i>修改</a>
											</div>

										</div>
										<div class="card-content" id="alterSelfAss">
											<form action="/UniversityOfShaft/UpdateSelfAssess.do"
												method="post">
												<!--内容-->
												<div id="write03">
													<div>
														<textarea id="selfAssess" name="selfAssess" placeholder="这里写对自己的评价！"></textarea>
													</div>
												</div>
												<!--提交-->
												<div style="margin-top: 5px; margin-left: 80%">
													<input class="waves-effect waves-light btn" type="submit"
														value="保存" onclick="isNull()">
												</div>
											</form>
										</div>
									</div>
								</div>
								<div id="test4" class="col s12">
									<div class="card">
										<div class="card-action">
											<h4>
												<b>请查找你想评价的学生</b>
											</h4>
										</div>
										<div class="card-content">
											<div class="table-responsive">
												<table
													class="table table-striped table-bordered table-hover"
													id="dataTables-TeacherEvaluate">
													<thead>
														<tr>
															<th>学号</th>
															<th>姓名</th>
															<th>班级</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="as0" items="${sAA}" varStatus="vs">
															<tr class="odd gradeX">
																<td>${sAA[vs.index][0]}</td>
																<td>${sAA[vs.index][1]}</td>
																<td>${sAA[vs.index][2]}</td>
																<td><a href="#">评价</a></td>
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
			$('#dataTables-TeacherEvaluate').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="${path}assets/js/custom-scripts.js"></script>

	<script>
		/* 是否显示自我评价的编辑框 */
		function hideOrShow() {
			if (document.getElementById("alterSelfAss").style.display == "")
				document.getElementById("alterSelfAss").style.display = "none";
			else
				document.getElementById("alterSelfAss").style.display = "";
		}

		/* 判断是否为空 */
		function isNull() {
			if (document.getElementById("selfAssess").value == "")
				confirm("自我评价为空？");
		}
	</script>

</body>

</html>
