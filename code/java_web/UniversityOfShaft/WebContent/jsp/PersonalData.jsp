<%@page pageEncoding="utf-8"%>
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
<title>个人资料</title>

<link rel="shortcut icon" href="${path}assets/img/icon_pd.ico" />
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

<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">个人资料</h1>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li><a href="#">个人资料</a></li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-TeacherEvaluate">
										<!--line1-->
										<tr>
											<td width="100">学号：</td>
											<td width="150px">${pd.getStu_SNo()}</td>
											<td width="130px">姓名：</td>
											<td width="200px">${pd.getStu_Name()}</td>
											<td width="100px">性别：</td>
											<td width="120px">${pd.getStu_Sex()}</td>

											<!--<td width="127px" rowspan="6">a3</td>-->
										</tr>
										<!--line2-->
										<tr>
											<td>身份证号：</td>
											<td>${pd.getStu_Id()}</td>
											<td>出生日期：</td>
											<td>${pd.getStu_Bir()}</td>
											<td>民族：</td>
											<td>${pd.getStu_Nation()}</td>
										</tr>
										<!--line3-->
										<tr>
											<td width="100">电话号码：</td>
											<td width="150px">${pd.getStu_Tel()}</td>
											<td width="130px">家庭住址：</td>
											<td width="200px">${pd.getStu_Home()}</td>
											<td width="100px">籍贯：</td>
											<td width="120px">${pd.getStu_From()}</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>


				</div>


				<!-- /. ROW  -->
				<div class="fixed-action-btn horizontal click-to-toggle">
					<a class="btn-floating btn-large red"> <i
						class="material-icons">menu</i>
					</a>
					<ul>
						<li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
						<li><a class="btn-floating yellow darken-1"><i
								class="material-icons">format_quote</i></a></li>
						<li><a class="btn-floating green"><i
								class="material-icons">publish</i></a></li>
						<li><a class="btn-floating blue"><i
								class="material-icons">attach_file</i></a></li>
					</ul>
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

	<!-- Custom Js -->
	<script src="${path}assets/js/custom-scripts.js"></script>


</body>

</html>