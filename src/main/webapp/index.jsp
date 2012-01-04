<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<script type="text/javascript">
	function show() {
		showModalDialog(
				'./jsp/layout.jsp',
				'test',
				'dialogWidth:400px;dialogHeight:300px;dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:yes;status:yes');

	}
</script>
<body>
	<h1>Hello World!</h1>
	<input type="button" value='tiles button' onclick="show()" />
</body>
</html>
