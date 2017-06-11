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
    <title></title>

    <link rel="shortcut icon" href="${path}assets/img/icon_j.ico"/>
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
<body onload="showDiaryOrNot()">
<div id="wrapper">
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                日志详情
            </h1>
            <ol class="breadcrumb">
                <li><a href="${path}jsp/teacher/tnavigation.jsp">大学轴</a></li>
                <li><a href="/UniversityOfShaft/tlistclass.do">学生日志</a></li>
                <li class="active">日志详情</li>
            </ol>

        </div>

        <div id="page-inner">

            <!-- /. ROW  -->
            <div id="div-studiarylist" class="row">
                <div class="col-md-12">
                    <!--   Basic Table  -->
                    <div class="card">
                    	<div id="div-show01" class="card-action">
                            <a href="/UniversityOfShaft/tlistclass.do">返回列表</a>
                        </div>
                        <div class="card-action">
                            班级人员
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th class="center">学号</th>
                                        <th class="center">姓名</th>
                                        <th class="center">性别</th>
                                        <th class="center">日志</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="vo" items="${list0}" varStatus="vs">
                                    <tr>
                                        <td class="center">${stuinfo.getStu_SNo()}</td>
                                        <td class="center">${stuinfo.getStu_Name()}</td>
                                        <td class="center">${stuinfo.getStu_Sex()}</td>
                                        <td class="center"><a href="/UniversityOfShaft/tshowonestudiary.do?diaryid=${vo.getL_ID()}&strsno=${stuinfo.getStu_SNo()}">${vo.getL_Title()}</a></td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- End  Basic Table  -->
                </div>
            </div>

            <div id="div-studiaryshow" class="row">
                <!--显示日志-->
                <div id="div-show" class="col-lg-12">
                    <div class="card">
                        <div class="card-content">
                            <div id="div-show02">
                                <div id="div-showtitle">
                                    <p>${sd.getL_Title()}</p>
                                </div>
                                <div id="div-showcontent">
                                    <div>
                                        <h4>
                                            ${sd.getL_Detail()}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <p>Copyright &copy; 2016.Company name All rights reserved.
                    <a target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>
                </p>
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
        
        function showDiaryOrNot() {
        	if("${sld}"=="1") { //日记列表界面显示
    			document.getElementById("div-studiaryshow").style.display = "none";
    	        document.getElementById("div-studiarylist").style.display = "";
    		}
        	else if("${sod}"=="1") { //日记列表界面显示
    			document.getElementById("div-studiarylist").style.display = "";
    	        document.getElementById("div-studiaryshow").style.display = "";
    		}
        }
        
    </script>
    <!-- Custom Js -->
    <script src="${path}assets/js/custom-scripts.js"></script>


</body>

</html>
