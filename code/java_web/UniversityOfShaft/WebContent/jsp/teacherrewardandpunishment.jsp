<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                <table class="table table-striped table-bordered table-hover" id="reward_table">
                                    <thead>
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>获奖时间</th>
                                        <th>获奖内容</th>
                                    </tr>
                                    </thead>
                                    <tbody>
											<c:forEach var="as1" items="${list1}" varStatus="vs">
													<tr class="odd gradeX">
													<td>${as1.getStu_SNo()}</td>
													<td>${as1.getUS_Name()}</td>
													<td>${as1.getSRP_Time()}</td>
													<td>${as1.getSRP_Info()}</td>
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
                                <table class="table table-striped table-bordered table-hover" id="punishment_table">
                                    <thead>
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th> 
                                        <th>惩罚时间</th>
                                        <th>惩罚内容</th>
                                        
                                    </tr>
                                    </thead>
                                      <tbody>
											<c:forEach var="as0" items="${list0}" varStatus="vs">
													<tr class="odd gradeX">
													<td>${as0.getStu_SNo()}</td>
													<td>${as0.getUS_Name()}</td>
													<td>${as0.getSRP_Time()}</td>
													<td>${as0.getSRP_Info()}</td>
													</tr>
											</c:forEach>
									</tbody>
                                </table>
                            </div>   
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                       <div class="card">
                         <div class="card-action">
                            新增
                        </div>
                        <form action="/UniversityOfShaft/rewandpunadd.do">
                      <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="reward_table">
                                    <thead>
                                    <tr>
                                         <th>学号</th>
                                         <th>奖惩时间</th>
                                         <th>奖或者惩</th>
                                         <th>获奖内容</th>
                                    </tr>
                                    </thead>
                                    <tbody>
													<tr class="odd gradeX">
													<td ><textarea  name="stu_id"></textarea></td>
													<td><input  name="srp_time" type="date" /></td>
													<td><input  name="srp_flag" type="radio" value="1"/>奖励    
														<input  name="srp_flag" type="radio" value="0"/>惩罚</td>
													<td><textarea  name="srp_info"></textarea></td>
													</tr>
									</tbody>
                                </table>
                            </div>
                       <!--提交-->
												<div style="margin-top: 5px; margin-left: 80%">
													<input class="waves-effect waves-light btn" type="submit"
														value="提交" >
												</div>
                </div>
                </form>
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
    <!-- DATA TABLE SCRIPTS -->
    <script src="${path}assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="${path}assets/js/dataTables/dataTables.bootstrap.js"></script>
    <script>
        $(document).ready(function () {
            $('#reward_table').dataTable();
        });
        $(document).ready(function () {
            $('#punishment_table').dataTable();
        });
       
    </script>
    <!-- Custom Js -->
    <script src="${path}assets/js/custom-scripts.js"></script>
    <script>
    $(document).ready(function () {
        $('ul.tabs').tabs();
        $('.collapsible').collapsible({
                accordion: false, // A setting that changes the collapsible behavior to expandable instead of the default accordion style
                onOpen: function (el) {
                    alert('Open');
                }, // Callback for Collapsible open
                onClose: function (el) {
                    alert('Closed');
                } // Callback for Collapsible close
            }
        );
    });
    </script>
</body>
</html>
                      