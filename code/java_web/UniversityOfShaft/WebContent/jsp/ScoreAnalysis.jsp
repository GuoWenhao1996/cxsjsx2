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
    <title>成绩分析</title>

    <link rel="shortcut icon" href="${path}assets/img/icon_sa.ico"/>
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
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                成绩分析
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">成绩分析</a></li>
            </ol>

        </div>
        <div id="page-inner">

            <div class="row">


                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            条形图
                        </div>
                        <div class="card-content">
                            <div id="morris-bar-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            面积图
                        </div>
                        <div class="card-content">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /. ROW  -->
            <div class="row">

                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            线形图
                        </div>
                        <div class="card-content">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            环形图
                        </div>
                        <div class="card-content">
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /. ROW  -->
            <footer><p>Copyright &copy; 2017.Team of DXZ All rights reserved.Developed by students of <a
                    target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>.</p>
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
