<%@page pageEncoding="utf-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
	request.setAttribute("path", basePath);  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>大学轴系统用户登录</title>
<link href="${path}assets/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${path}assets/js/jQuery1.7.js"></script>
<script type="text/javascript" src="${path}assets/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${path}assets/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${path}assets/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${path}assets/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});
});
</script>
<script type="text/javascript">
$(function(){
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	}
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	}
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});
</script>
</head>

<body>
<div id="tab">
  <ul class="tab_menu">
    <li class="selected">学生登录</li>
    <li>导师登录</li>
  </ul>
  <div class="tab_box">
    <!-- 学生登录开始 -->
    <div>
      <div class="stu_error_box"></div>
      <form   action="/UniversityOfShaft/StuLogin.do" method="post" class="stu_login_error">
        <div id="username">
          <label>学&nbsp;&nbsp;&nbsp;号：</label>
          <input type="text" id="stu_username_hide" name="username" placeholder="输入学号" nullmsg="学号不能为空！" datatype="s6-18" errormsg="学号范围在6~18个字符之间！" sucmsg="学号验证通过！" class="input"/>
          <!--ajaxurl="demo/valid.jsp"-->
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="stu_password_hide" name="password" placeholder="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"required class="input"/>
        </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>
        <div id="login">
          <button type="submit">登录</button>
        </div>
      </form>
    </div>
    <!-- 学生登录结束-->
    <!-- 导师登录开始-->
    <div class="hide">
      <div class="tea_error_box"></div>
      <form action="navigation.jsp" method="post" class="tea_login_error">
        <div id="username">
          <label>教工号：</label>
          <input type="text" id="tea_username_hide" name="username" placeholder="输入教工号" nullmsg="教工号不能为空！" datatype="s6-18" errormsg="教工号范围在6~18个字符之间！" sucmsg="教工号验证通过！" class="input"/>
          <!--ajaxurl="demo/valid.jsp"-->
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="tea_password_hide" name="password" placeholder="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！" required class="input"/>
        </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>
        <div id="login">
          <button type="submit">登录</button>
        </div>
      </form>
    </div>
    <!-- 导师登录结束-->
  </div>
</div>
<div class="screenbg">
  <ul>
    <li><a href="javascript:;"><img src="${path}assets/images/0.jpg"></a></li>
    <li><a href="javascript:;"><img src="${path}assets/images/1.jpg"></a></li>
    <li><a href="javascript:;"><img src="${path}assets/images/2.jpg"></a></li>
  </ul>
</div>
</body>
</html>
