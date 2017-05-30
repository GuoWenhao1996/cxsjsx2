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
    <title></title>

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
                空页
                <small>创建新页面.</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">空页</a></li>
                <!--<li class="active">数据</li>-->
            </ol>

        </div>
        <div id="page-inner">

            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-action">
                            空页
                        </div>
                        <div class="card-content">
                            <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut laboreConsectetur
                                adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                                enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore eu fugiat nulla pariatur.</p>
                            <div class="clearBoth"><br/></div>

                        </div>
                    </div>


                    <footer><p>Copyright &copy; 2017.Team of DXZ All rights reserved.Developed by students of <a
                            target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>.</p>
                    </footer>
                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
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
