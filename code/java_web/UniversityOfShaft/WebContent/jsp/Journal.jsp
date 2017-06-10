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
    <title>日志</title>

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
<body onload="listOrShow()">
<div id="wrapper">
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                日志
            </h1>
            <ol class="breadcrumb">
                <li><a href="PersonalData.html">主页</a></li>
                <li><a href="Journal.html">日志</a></li>
                <!--<li class="active">数据</li>-->
            </ol>

        </div>

        <div id="page-inner">
            <div class="row">
                <div id="div-list" class="col-lg-12">
                    <div class="card">
                        <div id="div0" class="card-action">
                            <i class="material-icons">description</i><a href="#">草稿箱</a>
                            <i class="material-icons">delete</i><a href="#">回收站</a>
                            <i class="material-icons">settings</i><a href="#">设置</a>
                        </div>
                        <!--列表显示-->
                        <div class="card-content">
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div id="divmyjournal01" class="collapsible-header">
                                        <i class="material-icons">perm_contact_calendar</i>
                                        我的日志
                                    </div>
                                    <div id="divmyjournal01-01" class="collapsible-body">
                                        <c:forEach var="ds0" items="${list0}" varStatus="vs" >
                                        <div class="cla01-01">
                                            <p>
                                                <a href="/UniversityOfShaft/diaryshow.do?diaryid=${ds0.getL_ID()}" onclick="listOrShow()">${ds0.getL_Title()}</a>
                                            </p>

                                        </div>
                                        <div class="cla01-02">
                                            <p>
                                                <label>${ds0.getL_Time()}(11/66)</label>
                                                <a id="a-edit" href="/UniversityOfShaft/diaryedit.do?diaryid=${ds0.getL_ID()}">编辑</a>
                                                <a id="a-delete" href="/UniversityOfShaft/diarydelete.do?diaryid=${ds0.getL_ID()}">删除</a>
                                            </p>
                                        </div>
                                        <div style="clear:both"></div><!--这个层很有用，必须要，否则可能不兼容。-->
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <div id="divmyjournal02" class="collapsible-header">
                                        <i class="material-icons">lock_outline</i>
                                        私密日志
                                    </div>
                                    <div id="divmyjournal02-01" class="collapsible-body">
                                        <c:forEach var="ds1" items="${list1}" varStatus="vs" >
                                        <div class="cla02-01">
                                            <p>
                                                <a href="/UniversityOfShaft/diaryshow.do?diaryid=${ds1.getL_ID()}">${ds1.getL_Title()}</a>
                                            </p>
                                        </div>
                                        
                                        <div class="cla02-02">
                                            <p>
                                                <label>${ds1.getL_Time()}(11/66)</label>
                                                <a id="b-edit" href="/UniversityOfShaft/diaryedit.do?diaryid=${ds1.getL_ID()}">编辑</a>
                                                <a id="b-delete" href="/UniversityOfShaft/diarydelete.do?diaryid=${ds1.getL_ID()}">删除</a>
                                            </p>
                                        </div>
                                        <div style="clear:both"></div><!--这个层很有用，必须要，否则可能不兼容。-->
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <div id="divmyjournal03" class="collapsible-header">
                                        <i class="material-icons">mode_edit</i>
                                        写日志
                                    </div>
                                    <div class="collapsible-body">
                                        <!--<p></p>-->
                                        <div>
											<form id="formsubmit" method="post">
											
                                            	<!--日志标题-->
                                            	<div id="write02">
                                                	<div>
                                                		<input type="text" name="editdiaryname" value="${diaryId}" style="display: none;">
                                                    	<input type="text" name="mytitle" placeholder="这里填写标题！" value="${deTitle}">
                                                	</div>
                                            	</div>

                                            	<!--内容-->
                                            	<div id="write03">
                                                	<div>
                                                    	<textarea name="mycontext" placeholder="这里写正文！">${deContent}</textarea>
                                                	</div>
                                            	</div>

                                            	<!--发表-->
                                            	<div id="write01">
                                                	<div>
                                                    	<input type="radio" name="radio01" value="0">
                                                    	<label>公开</label>
                                                	</div>
                                                	<div>
                                                    	<input type="radio" name="radio01" value="1">
                                                    	<label>私密</label>
                                                	</div>
                                                	<input id="mysubmitid" type="submit" value="提交" onclick="addOrEdit()"> 
                                            	</div>
                                         	</form>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>

                <!--显示日志-->
                <div id="div-show" class="col-lg-12">
                    <div class="card">
                        <div id="div-show01" class="card-action">
                            <a href="/UniversityOfShaft/diarylist.do">返回列表</a>
                        </div>

                        <div class="card-content">
                            <div id="div-show02">
                                <div id="div-showtitle">
                                    <p>${deTitle}</p>
                                </div>
                                <div id="div-showcontent">
                                    <div>
                                        <h4>
                                        	${deContent}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. ROW  -->
            <footer>
                <p>Copyright &copy; 2016.Company name All rights reserved.
                    <a target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>
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
    
    /* 显示列表还是日志 */
    function listOrShow() {
		if("${ow}"=="0") {
			document.getElementById("div-show").style.display = "none";
	        document.getElementById("div-list").style.display = "";
		}
		else if("${ow}"=="1") {
			document.getElementById("div-list").style.display = "none";
        	document.getElementById("div-show").style.display = "";
		}
		else if("${editname}"=="编辑") {
			document.getElementById("div-show").style.display = "none";
	        document.getElementById("div-list").style.display = "";
			document.getElementById("divmyjournal03").click(); //显示编辑界面
			document.getElementById("mysubmitid").value = "确定";
			//私密还是公开 被选中
			var rad = document.getElementsByName("radio01");
			for(var i=0;i<=rad.length;i++) {
		        if(rad[i].value=="${deLimits}") {
		        	rad[i].checked = true;
		        } 
		    }
		}
		else if("${lflush}"=="1") {
			window.location.href = "/UniversityOfShaft/diarylist.do";
		}
	}

    /* 添加或者修改日记 */
    function addOrEdit() {
    	var myform0 = document.getElementById("formsubmit");
    	var mysubid = document.getElementById("mysubmitid");
    	if(mysubid.value=="提交") {
    		var mytitle = document.getElementsByName("mytitle");
    		var mycontent = document.getElementsByName("mycontext");
    		var mylimits = document.getElementsByName("radio01");
    		alert(mysubid.value);
    		alert(mytitle.value);
    		alert(mycontent.value);
    		alert(mylimits.value);
    		myform0.action="/UniversityOfShaft/diaryadd.do";
    		myform0.submit();
    	}
    	else if(mysubid.value=="确定") {
    		alert(mysubid.value);
    		myform0.action="/UniversityOfShaft/diaryupdate.do";
    		myform0.submit();
    	}
	}
</script>


</body>

</html>
