<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<link type="text/css" href="./css/jquery-ui-1.8.16.custom.css"
	rel="Stylesheet" />
<script type="text/javascript" src="./js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui-1.8.16.custom.min.js"></script>
<style>
table{
	margin:auto;
	width:320px;
	text-align: center;
}
table input {
	height: 23px;
	width: 160px;
}
.demo{

}
.demo input {
	width: 110px;
	font:normal 16px/33px 'Microsoft YaHei';
}
.con_div{
	text-align:center; 
	width: 500px;
	/*border: 2px solid red;*/
	
}
table span{
	width: 80px;
	font:normal 16px/33px 'Microsoft YaHei';
}
.toggler{
	width: 60%
}
.nav_bar{
	height:40px;
	font:normal 16px/33px 'Microsoft YaHei';
	font-size: 27px;
}
</style>
<script type="text/javascript">
	function show() {
		showModalDialog(
				'./jsp/layout.jsp',
				'test',
				'dialogWidth:400px;dialogHeight:300px;dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:yes;status:yes');

	}

	$(function() {
		$("input:submit, input:button", ".demo").button();
		$("input:submit", ".demo").click(function() {
			$("input:submit").button({
				disabled : true
			});
			$("input:submit").button({
				label: "登录中……" 
			});
			return true;
		});
	});

</script>
<body>
	
	<div class="con_div">
		<div id="effect" class="ui-widget-content ui-corner-all">
		<h3 class="ui-widget-header ui-corner-all nav_bar" >MaveWeb System By Alex Wang</h3>
		<form action="login.do" method="post">
			<table>
				<tr>
					<td align="right"><span>账号：</span></td>
					<td align="center"><input type="text" id="userName" name="userName"/></td>
				</tr>
				<tr>
					<td align="right"><span>密码：</span></td>
					<td align="center"><input type="password"  id="passWord" name="passWord"/></td>
				</tr>
			</table>
			<br>
			<div class="demo">
				<input value="登录" type="submit" /> <input value="申请注册"
					type="button">
			</div>
			<br>
		</form>
		</div>
	</div>
</body>
<script type="text/javascript">
$(window).resize(function() {
	$('.con_div').css({
		position : 'absolute',
		left : ($(window).width() - $('.con_div').outerWidth()) / 2,
		top : ($(window).height() - $('.con_div').outerHeight()) / 2,
	});
});
//初始化函数
$(window).resize();
</script>
</html>
