<%@page pageEncoding="utf-8"%>
<%@page import="util.DBUtil" %>
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

<link rel="stylesheet" href="${path}assets/css/navigation.css">
<script>
	function setIframeHeight(iframe) {
		if (iframe) {
			var iframeWin = iframe.contentWindow
					|| iframe.contentDocument.parentWindow;
			if (iframeWin.document.body) {
				iframe.height = iframeWin.document.documentElement.scrollHeight
						|| iframeWin.document.body.scrollHeight;
			}
		}
	};
	window.onload = function() {
		setIframeHeight(document.getElementById('mainFrame'));
		/*if(${username}==null){
			alert("您尚未登录");
			window.navigate("login.jsp"); 
		}   */
	};
	function changetitle(tit, e) {
		document.title = tit;
		var leader = document.getElementsByName("lead");
		for (i = 0; i < leader.length; i++) {
			if (leader[i].className == "active-menu waves-effect waves-dark") {
				leader[i].className = "waves-effect waves-dark";
			}
		}
		e.className = "active-menu waves-effect waves-dark";
	}
</script>
</head>

<body>
	<div id="wrapper">
	
		<%
			String name = "as";
			boolean has = false;
			String username=request.getParameter("username");
			if(!username.equals(null)){
				has=true;
				name=username;				
			}
			Cookie Cookies[] = request.getCookies();
			if (Cookies != null) {
				for (int n = 0; n < Cookies.length; n++) {
					Cookie newCookie = Cookies[n];
					if (newCookie.getName().equals("cookieNo")) {
						has = true;
						name = newCookie.getValue();
						name = java.net.URLDecoder.decode(name, "UTF-8");
					}
				}
			}
			System.out.println(has);
			if (!has) {
				response.sendRedirect("/UniversityOfShaft/jsp/Login.jsp");
			}
		%>
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="#"><i
					class="large material-icons">trending_up</i> <strong>大学轴</strong></a>

				<div id="sideNav" href="">
					<i class="material-icons dp48">toc</i>
				</div>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown4"><i
						class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown3"><i
						class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown2"><i
						class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown1"><i
						class="fa fa-user fa-fw"></i> <b>${username}</b> <i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> 个人资料 </a></li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置 </a></li>
			<li><a href="Login.html"><i class="fa fa-sign-out fa-fw"></i>
					注销 </a></li>
		</ul>
		<ul id="dropdown2" class="dropdown-content w250">
			<li><a href="#">
					<div>
						<i class="fa fa-comment fa-fw"></i> 新评论 <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-twitter fa-fw"></i> 3 新粉丝 <span
							class="pull-right text-muted small">12 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-envelope fa-fw"></i> 发送留言 <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-tasks fa-fw"></i> 新任务 <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-upload fa-fw"></i> 重启服务器 <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>查看所有</strong> <i
					class="fa fa-angle-right"></i>
			</a></li>
		</ul>
		<ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
			<li><a href="#">
					<div>
						<p>
							<strong>任务 1</strong> <span class="pull-right text-muted">60%
								完成度</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% 完成度 (成功)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>任务 2</strong> <span class="pull-right text-muted">28%
								完成度</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"
								style="width: 28%">
								<span class="sr-only">28% 完成度</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>任务 3</strong> <span class="pull-right text-muted">60%
								完成度</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% 完成度 (警告)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>任务 4</strong> <span class="pull-right text-muted">85%
								完成度</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
								style="width: 85%">
								<span class="sr-only">85% 完成度 (危险)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li>
		</ul>
		<ul id="dropdown4" class="dropdown-content dropdown-tasks w250">
			<li><a href="#">
					<div>
						<strong>John Doe</strong> <span class="pull-right text-muted">
							<em>今天</em>
						</span>
					</div>
					<div>自从1500年代以来Lorem Ipsum一直是行业标准的虚拟文字..</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>昨天</em>
						</span>
					</div>
					<div>Lorem Ipsum has been the industry's standard dummy text
						ever since an kwilnw...</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>昨天</em>
						</span>
					</div>
					<div>Lorem Ipsum has been the industry's standard dummy text
						ever since the...</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>阅读所有消息</strong>
					<i class="fa fa-angle-right"></i>
			</a></li>
		</ul>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="active-menu waves-effect waves-dark" name="lead"
						href="PersonalData.jsp" target="mainFrame"
						onclick="javascript:changetitle('个人资料',this)"><i
							class="fa fa-dashboard"></i> 个人资料</a></li>
					<li><a id="qw" href="ScoreQuery.jsp"
						class="waves-effect waves-dark" name="lead" target="mainFrame"
						onclick="javascript:changetitle('成绩查询',this)"><i
							class="fa fa-desktop"></i> 成绩查询</a></li>
					<li><a href="ScoreAnalysis.jsp"
						class="waves-effect waves-dark" name="lead" target="mainFrame"
						onclick="javascript:changetitle('成绩分析',this)"><i
							class="fa fa-bar-chart-o"></i> 成绩分析</a></li>
					<li><a href="/UniversityOfShaft/diarylist.do"
						class="waves-effect waves-dark" name="lead" target="mainFrame"
						onclick="javascript:changetitle('日志',this)"><i
							class="fa fa-qrcode"></i> 日志</a></li>

					<li><a href="RewardsAndPunishment.jsp"
						class="waves-effect waves-dark" name="lead" target="mainFrame"
						onclick="javascript:changetitle('奖惩',this)"><i
							class="fa fa-table"></i> 奖惩</a></li>
					<li><a href="/UniversityOfShaft/listAssess.do" class="waves-effect waves-dark"
						name="lead" target="mainFrame"
						onclick="javascript:changetitle('评价',this)"><i
							class="fa fa-edit"></i> 评价</a></li>


					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 多级下拉菜单<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">二级链接</a></li>
							<li><a href="#">二级链接</a></li>
							<li><a href="#" class="waves-effect waves-dark">二级链接<span
									class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">三级链接</a></li>
									<li><a href="#">三级链接</a></li>
									<li><a href="#">三级链接</a></li>

								</ul></li>
						</ul></li>
					<li><a href="empty.jsp" class="waves-effect waves-dark"
						name="lead" target="mainFrame"
						onclick="javascript:changetitle('空白页',this)"><i
							class="fa fa-fw fa-file"></i> 空白页 </a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<iframe src="${path}jsp/PersonalData.jsp" id="mainFrame"
			name="mainFrame" width="100%" scrolling="no" frameborder="no"></iframe>
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