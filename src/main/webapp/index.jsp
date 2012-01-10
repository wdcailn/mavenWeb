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
<script type="text/javascript">
	function show() {
		showModalDialog(
				'./jsp/layout.jsp',
				'test',
				'dialogWidth:400px;dialogHeight:300px;dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:yes;status:yes');

	}

	$(function() {
		$( "input:submit, a, button", ".demo" ).button();
		$( "a", ".demo" ).click(function() { return false; });
	});
</script>
<body>
	<h1>Hello World!</h1>
	<input type="button" value='tiles button' onclick="show()" />
	<div class="wall-of-buttons">
		<table>
			<tr>
				<td>用户名：</td>
				<td>密码：</td>

			</tr>
		</table>

		<div class="demo">

			<button>A button element</button>

			<input value="A submit button" type="submit"> <a href="#">An
				anchor</a>

		</div>
		<!-- End demo -->



		<div style="display: none;" class="demo-description">
			<p>Examples of the markup that can be used for buttons: A button
				element, an input of type submit and an anchor.</p>
		</div>
		<!-- End demo-description -->
	</div>
</body>
</html>
