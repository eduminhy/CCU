<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>

<script>
	alert("${data}");
	location.href = "/admin?view=${data2}";
</script>

</head>
</html>