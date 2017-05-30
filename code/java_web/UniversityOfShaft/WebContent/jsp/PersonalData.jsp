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
    <title>个人资料</title>

    <link rel="shortcut icon" href="${path}assets/img/icon_pd.ico"/>
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
                个人资料
            </h1>
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
                                        <td width="150px"></td>
                                        <td width="130px">学生证号：</td>
                                        <td width="200px"></td>
                                        <td width="100px">手机类型：</td>
                                        <td width="120px"></td>
                                        <td width="127px" rowspan="6" colspan="2">照片:建议大小：9-18K，分辨率：96*128，文件类型：jpg、jpeg
                                        </td>
                                        <!--<td width="127px" rowspan="6">a3</td>-->
                                    </tr>
                                    <!--line2-->
                                    <tr>
                                        <td>姓名：</td>
                                        <td></td>
                                        <td>培养方向：</td>
                                        <td></td>
                                        <td>手机号码：</td>
                                        <td></td>

                                    </tr>
                                    <!--line3-->
                                    <tr>
                                        <td>曾用名：</td>
                                        <td></td>
                                        <td>专业方向：</td>
                                        <td></td>
                                        <td>家庭邮编：</td>
                                        <td></td>


                                    </tr>
                                    <!--line4-->
                                    <tr>
                                        <td>性别：</td>
                                        <td></td>
                                        <td>入学日期：</td>
                                        <td></td>
                                        <td>家庭电话：</td>
                                        <td></td>


                                    </tr>
                                    <!--line5-->
                                    <tr>
                                        <td>出生日期：</td>
                                        <td></td>
                                        <td>毕业中学：</td>
                                        <td></td>
                                        <td>父亲姓名：</td>
                                        <td></td>


                                    </tr>
                                    <!--line6-->
                                    <tr>
                                        <td>民族</td>
                                        <td></td>
                                        <td>宿舍号：</td>
                                        <td></td>
                                        <td>父亲单位：</td>
                                        <td></td>


                                    </tr>
                                    <!--line7-->
                                    <tr>
                                        <td>籍贯</td>
                                        <td></td>
                                        <td>电子邮箱：</td>
                                        <td></td>
                                        <td>父亲单位邮编：</td>
                                        <td></td>
                                        <td colspan="2"><input type="button" value="选择文件">未选择任何文件</td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line8-->
                                    <tr>
                                        <td>政治面貌：</td>
                                        <td></td>
                                        <td>联系电话：</td>
                                        <td></td>
                                        <td>母亲姓名</td>
                                        <td></td>
                                        <td colspan="2"></td>
                                        <!--<td width="127px"></td>-->
                                    </tr>
                                    <!--line9-->
                                    <tr>
                                        <td>来源地区：</td>
                                        <td></td>
                                        <td>邮政编码：</td>
                                        <td></td>
                                        <td>母亲单位</td>
                                        <td></td>
                                        <td colspan="2"></td>
                                        <!--<td width="127px"></td>-->
                                    </tr>
                                    <!--line10-->
                                    <tr>
                                        <td>来源省：</td>
                                        <td></td>
                                        <td>准考证号：</td>
                                        <td></td>
                                        <td colspan="2">母亲单位邮编：</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line11-->
                                    <tr>
                                        <td>出生地：</td>
                                        <td></td>
                                        <td>身份证号：</td>
                                        <td></td>
                                        <td colspan="2">父亲单位电话</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line12-->
                                    <tr>
                                        <td>健康状况：</td>
                                        <td></td>
                                        <td>学历层次：</td>
                                        <td></td>
                                        <td colspan="2">母亲单位电话</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line13-->
                                    <tr>
                                        <td>学院：</td>
                                        <td></td>
                                        <td>港澳台码：</td>
                                        <td></td>
                                        <td colspan="2">家庭地址：</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line14-->
                                    <tr>
                                        <td>系</td>
                                        <td></td>
                                        <td>报道号：</td>
                                        <td></td>
                                        <td colspan="2">家庭所在地：</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line15-->
                                    <tr>
                                        <td>专业名称：</td>
                                        <td></td>
                                        <td>是否高水平运动员：</td>
                                        <td></td>
                                        <td rowspan="4">备注：</td>
                                        <td rowspan="4" colspan="3"></td>
                                        <!--<td width="127px" rowspan="4">a3</td>-->
                                        <!--<td width="127px" rowspan="4">a3</td>-->
                                    </tr>
                                    <!--line16-->
                                    <tr>
                                        <td>教学班名称：</td>
                                        <td></td>
                                        <td>英语等级：</td>
                                        <td></td>
                                        <!--<td width="100px">a3</td>-->
                                        <!--<td width="120px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line17-->
                                    <tr>
                                        <td>行政班：</td>
                                        <td></td>
                                        <td>英语成绩：</td>
                                        <td></td>
                                        <!--<td width="100px">a3</td>-->
                                        <!--<td width="120px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line18-->
                                    <tr>
                                        <td>学制：</td>
                                        <td></td>
                                        <td>录检表页码：</td>
                                        <td></td>
                                        <!--<td width="100px">a3</td>-->
                                        <!--<td width="120px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line19-->
                                    <tr>
                                        <td>学习年限：</td>
                                        <td></td>
                                        <td>特长：</td>
                                        <td></td>
                                        <td colspan="2"></td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line20-->
                                    <tr>
                                        <td>学籍状态：</td>
                                        <td></td>
                                        <td>入党(团)时间：</td>
                                        <td></td>
                                        <td colspan="2"></td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line21-->
                                    <tr>
                                        <td>当前所在级：</td>
                                        <td></td>
                                        <td>火车终点站：</td>
                                        <td></td>
                                        <td colspan="2">证明人：</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                    <!--line22-->
                                    <tr>
                                        <td>考生号：</td>
                                        <td></td>
                                        <td>学习形式：</td>
                                        <td></td>
                                        <td colspan="2">姓名拼音：</td>
                                        <!--<td width="120px">a3</td>-->
                                        <td colspan="2"></td>
                                        <!--<td width="127px">a3</td>-->
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="card-action">
                            <div>
                                <a class="waves-effect waves-light btn"><i class="material-icons left">done</i>提交</a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>


            <!-- /. ROW  -->
            <div class="fixed-action-btn horizontal click-to-toggle">
                <a class="btn-floating btn-large red">
                    <i class="material-icons">menu</i>
                </a>
                <ul>
                    <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
                    <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
                    <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
                    <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
                </ul>
            </div>

            <footer><p>Copyright &copy; 2017.Team of DXZ All rights reserved.Developed by students of <a target="_blank"
                                                                                                         href="http://www.cqjtu.edu.cn/">CQJTU</a>.
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