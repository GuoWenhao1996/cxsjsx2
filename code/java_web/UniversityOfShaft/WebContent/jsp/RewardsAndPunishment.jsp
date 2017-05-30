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
    <title>奖惩</title>

    <link rel="shortcut icon" href="${path}assets/img/icon_rap.ico"/>
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
                奖惩
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">奖惩</a></li>
                <!--<li class="active">数据</li>-->
            </ol>
        </div>
        <div id="page-inner">

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                        <div class="card-action">
                            奖励
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>获奖时间</th>
                                        <th>获奖类型</th>
                                        <th>获奖内容</th>
                                        <th>获奖级别</th>
                                        <th>其他</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd gradeX">
                                        <td>2014.5.1</td>
                                        <td>程序设计大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">校级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>2015.2.3</td>
                                        <td>创新创业大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">国家级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>2014.5.1</td>
                                        <td>程序设计大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">校级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>2017.6.3</td>
                                        <td>创新创业大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">国家级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>2017.5.1</td>
                                        <td>程序设计大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">校级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>2017.1.3</td>
                                        <td>创新创业大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">国家级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.3.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛</td>
                                        <td>证书、奖金</td>
                                        <td class="center">市级</td>
                                        <td class="center"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                        <div class="card-action">
                            惩罚
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example1">
                                    <thead>
                                    <tr>
                                        <th>惩罚时间</th>
                                        <th>惩罚类型</th>
                                        <th>惩罚内容</th>
                                        <th>惩罚级别</th>
                                        <th>其他</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr class="gradeA">
                                        <td>2017.2.3</td>
                                        <td>互联网大赛作弊</td>
                                        <td>批评</td>
                                        <td class="center">严重</td>
                                        <td class="center"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
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
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script>
    <!-- Custom Js -->
    <script src="${path}assets/js/custom-scripts.js"></script>
</body>
</html>
