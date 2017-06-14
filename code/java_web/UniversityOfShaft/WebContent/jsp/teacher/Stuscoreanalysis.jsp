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
<title>成绩分析</title>

<link rel="shortcut icon" href="assets/img/icon_sa.ico" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">

<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
<script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });

        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main'));
                var num=parseInt("${data.size()}");
                alert("该学期共有"+num+"门课程已出成绩");
                var option = {
                    //是否显示
                    tooltip: {
                        show: true
                    },
                    //数据类型
                    legend: {
                        data:['成绩']
                    },
                    //坐标轴x值
                    xAxis : [
                        {
                            type : 'category',
                            //data : ["scoredata[0].getSC_CourseName()","scoredata[0].getSC_CourseName()","scoredata[0].getSC_CourseName()"]
                            data : ["${data[0].getSC_CourseName()}","${data[1].getSC_CourseName()}","${data[2].getSC_CourseName()}","${data[3].getSC_CourseName()}","${data[4].getSC_CourseName()}","${data[5].getSC_CourseName()}","${data[6].getSC_CourseName()}","${data[7].getSC_CourseName()}","${data[8].getSC_CourseName()}","${data[9].getSC_CourseName()}","${data[10].getSC_CourseName()}","${data[11].getSC_CourseName()}"]
                            //data : ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子","dsf","as","wqe","tyr","xcv"]
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"成绩",
                            "type":"bar",     
                            "data":["${data[0].getSC_Score()}", "${data[1].getSC_Score()}", "${data[2].getSC_Score()}", "${data[3].getSC_Score()}", "${data[4].getSC_Score()}","${data[5].getSC_Score()}", "${data[6].getSC_Score()}", "${data[7].getSC_Score()}", "${data[8].getSC_Score()}", "${data[9].getSC_Score()}", "${data[10].getSC_Score()}", "${data[11].getSC_Score()}"],
                            itemStyle : { normal: {label : {show: true, position: 'inside'}}}                       
                        }
                    ],
                    
                };
                // 为echarts对象加载数据
                /*myChart.addData([[0, // 系列索引
        Math.round(Math.random() * 1000), // 新增数据
        false, // 新增数据是否从队列头部插入
        true // 是否增加队列长度，false则自定删除原有数据，队头插入删队尾，队尾插入删队头
        ]]
        );*/
                myChart.setOption(option);
            }
        );
    </script>
</head>
<body>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">成绩分析</h1>
				<ol class="breadcrumb">
					<li><a href="${path}jsp/teacher/tnavigation.jsp">主页</a></li>
                    <li><a href="/UniversityOfShaft/listofclass.do">学生成绩</a></li>
                    <li class="active">成绩分析</li>
				</ol>
			</div>
			<div id="page-inner">
			<div margin:0 auto>
            <label>学  期  数：</label>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=1">1</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=2">2</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=3">3</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=4">4</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=5">5</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=6">6</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=7">7</a></button>
            <button><a href="/UniversityOfShaft/ScoreAnalysis.do?strsno=${sno}&term=8">8</a></button>
            </div>
            <h1 align="center">第${term}学期成绩柱形图</h1>
			<div class="row">
			   <div id="main" style="height: 400px"></div>
			</div>
				<div class="row">
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">条形图</div>
							<div class="card-content">
								<div id="morris-bar-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">面积图</div>
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
							<div class="card-action">线形图</div>
							<div class="card-content">
								<div id="morris-line-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">环形图</div>
							<div class="card-content">
								<div id="morris-donut-chart"></div>
							</div>
						</div>
					</div>

				</div>
				<!-- /. ROW  -->
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
	<script src="assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>


</body>

</html>

