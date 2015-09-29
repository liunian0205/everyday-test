<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%String path = request.getContextPath();%>
<script type="text/javascript" src="<%=path %>/js/jqery-1.11.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#lname").keyup(function(){
        $("#cname").val($(this).val()+$("#fname").val());
    });
    $("#fname").keyup(function(){
        $("#cname").val($("#lname").val()+$(this).val());
    });
});

</script>
</head>
<body>
<%
out.print(path);
%>
第一个名字：<input id="fname" name="fname"/>
最后名字：<input id="lname" name="lname"/>
组合：<input id="cname" name="cname"/>
</body>
</html>