<%@page pageEncoding="utf-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
	request.setAttribute("path", basePath);  
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>页面未找到</title>
    <link rel="shortcut icon" href="${path}assets/img/404.png"/>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${path}assets/materialize/css/materialize.min.css" media="screen,projection"/>
    <!-- Bootstrap Styles-->
    <link href="${path}assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="${path}assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="${path}assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="${path}assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${path}assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand waves-effect waves-dark" href="PersonalData.jsp"><i class="large material-icons">trending_up</i>
                <strong>大学轴</strong></a>

            <div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown4"><i
                    class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"><i
                    class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown2"><i
                    class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i
                    class="fa fa-user fa-fw"></i> <b>John Doe</b> <i
                    class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </nav>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="#"><i class="fa fa-user fa-fw"></i> 个人资料 </a>
        </li>
        <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置 </a>
        </li>
        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 注销 </a>
        </li>
    </ul>
    <ul id="dropdown2" class="dropdown-content w250">
        <li>
            <a href="#">
                <div>
                    <i class="fa fa-comment fa-fw"></i> 新评论
                    <span class="pull-right text-muted small">4 min</span>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <i class="fa fa-twitter fa-fw"></i> 3 新粉丝
                    <span class="pull-right text-muted small">12 min</span>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <i class="fa fa-envelope fa-fw"></i> 发送留言
                    <span class="pull-right text-muted small">4 min</span>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <i class="fa fa-tasks fa-fw"></i> 新任务
                    <span class="pull-right text-muted small">4 min</span>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <i class="fa fa-upload fa-fw"></i> 重启服务器
                    <span class="pull-right text-muted small">4 min</span>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a class="text-center" href="#">
                <strong>查看所有</strong>
                <i class="fa fa-angle-right"></i>
            </a>
        </li>
    </ul>
    <ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
        <li>
            <a href="#">
                <div>
                    <p>
                        <strong>任务 1</strong>
                        <span class="pull-right text-muted">60% 完成度</span>
                    </p>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                             aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% 完成度 (成功)</span>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <p>
                        <strong>任务 2</strong>
                        <span class="pull-right text-muted">28% 完成度</span>
                    </p>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28"
                             aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                            <span class="sr-only">28% 完成度</span>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <p>
                        <strong>任务 3</strong>
                        <span class="pull-right text-muted">60% 完成度</span>
                    </p>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                             aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% 完成度 (警告)</span>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <p>
                        <strong>任务 4</strong>
                        <span class="pull-right text-muted">85% 完成度</span>
                    </p>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85"
                             aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                            <span class="sr-only">85% 完成度 (危险)</span>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
    </ul>
    <ul id="dropdown4" class="dropdown-content dropdown-tasks w250">
        <li>
            <a href="#">
                <div>
                    <strong>John Doe</strong>
                <span class="pull-right text-muted">
                                        <em>今天</em>
                                    </span>
                </div>
                <div>自从1500年代以来Lorem Ipsum一直是行业标准的虚拟文字..</div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <strong>John Smith</strong>
                <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                </div>
                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a href="#">
                <div>
                    <strong>John Smith</strong>
                <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                </div>
                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
            </a>
        </li>
        <li class="divider"></li>
        <li>
            <a class="text-center" href="#">
                <strong>阅读所有消息</strong>
                <i class="fa fa-angle-right"></i>
            </a>
        </li>
    </ul>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a class="waves-effect waves-dark" href="PersonalData.jsp"><i class="fa fa-dashboard"></i>个人资料</a>
                </li>
                <li>
                    <a href="ScoreQuery.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 成绩查询</a>
                </li>
                <li>
                    <a href="ScoreAnalysis.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 成绩分析</a>
                </li>
                <li>
                    <a href="Journal.jsp" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> 日志</a>
                </li>

                <li>
                    <a href="RewardsAndPunishment.jsp" class="waves-effect waves-dark"><i class="fa fa-table"></i>
                        奖惩</a>
                </li>
                <li>
                    <a href="Evaluate.jsp" class="waves-effect waves-dark"><i class="fa fa-edit"></i> 评价</a>
                </li>


                <li>
                    <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> 多级下拉菜单<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">二级链接</a>
                        </li>
                        <li>
                            <a href="#">二级链接</a>
                        </li>
                        <li>
                            <a href="#" class="waves-effect waves-dark">二级链接<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">三级链接</a>
                                </li>
                                <li>
                                    <a href="#">三级链接</a>
                                </li>
                                <li>
                                    <a href="#">三级链接</a>
                                </li>

                            </ul>

                        </li>
                    </ul>
                </li>
                <li>
                    <a href="empty.jsp" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i>
                        空白页 </a>
                </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                &nbsp;<i class="medium material-icons circle  red">error_outline</i>
                很抱歉，请求页面未找到！
            </h1>
            <ol class="breadcrumb">
                <li><a name="lead" href="navigation.jsp" target="mainFrame" onclick="javascript:changetitle('个人资料',this)">返回主页</a></li>
            </ol>
        </div>
        <!-- /. WRAPPER  -->
    </div>
    <!-- JS Scripts-->
</div>
<!-- jQuery Js -->
<script src="${path}assets/js/jquery-1.10.2.js"></script>

<!-- Bootstrap Js -->
<script src="${path}assets/js/bootstrap.min.js"></script>

<script src="${path}assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="${path}assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="${path}assets/js/custom-scripts.js"></script>
</body>

</html>
