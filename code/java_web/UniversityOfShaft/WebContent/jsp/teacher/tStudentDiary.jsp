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
<body onload="showStuOrNot()">
<div id="wrapper">
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                学生日志
            </h1>
            <ol class="breadcrumb">
                <li><a href="${path}jsp/teacher/thome.jsp">主页</a></li>
                <!--<li><a href="#">表格</a></li>-->
                <li href="" class="active">学生日志</li>
            </ol>

        </div>

        <div id="page-inner">

            <!-- /. ROW  -->
            <div id="div-classlist" class="row">
                <div class="col-md-12">
                    <!--   Basic Table  -->
                    <div class="card">
                        <div class="card-action">
                            班级情况
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>学院</th>
                                        <th>专业</th>
                                        <th>班级</th>
                                        <th>查看</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="vo" items="${lsd}" varStatus="vs">
                                    <tr>
                                        <td>信息学院</td>
                                        <td>计算机科学与技术</td>
                                        <td>${lsd[vs.index]}</td>
                                        <td><a href="/UniversityOfShaft/tshowclassstu.do?classname=${lsd[vs.index]}">查看</a></td>
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

            <div id="div-classstu" class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                        <div class="card-action">
                            ${cname}
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th class="center">学号</th>
                                        <th class="center">姓名</th>
                                        <th class="center">性别</th>
                                        <th class="center">日志</th>
                                        <th class="center">待定</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="vo" items="${callstu}" varStatus="vs">
                                    <tr class="odd gradeA">
                                        <td class="center">${vo.getStu_SNo()}</td>
                                        <td class="center">${vo.getStu_Name()}</td>
                                        <td class="center">${vo.getStu_Sex()}</td>
                                        <td class="center"><a href="/UniversityOfShaft/tliststudiary.do?strsno=${vo.getStu_SNo()}">查看</a></td>
                                        <td class="center">待定</td>
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
        
        function showStuOrNot() {
        	if("${clist}"=="1") { //日记列表界面显示
    			document.getElementById("div-classstu").style.display = "none";
    	        document.getElementById("div-classlist").style.display = "";
    		}
        	else if("${classshow}"=="1") { //日记列表界面显示
    			document.getElementById("div-classstu").style.display = "";
    	        document.getElementById("div-classlist").style.display = "";
    		}
        }
    </script>
    <!-- Custom Js -->
    <script src="${path}assets/js/custom-scripts.js"></script>

</body>

</html>
