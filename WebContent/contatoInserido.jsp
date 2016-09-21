<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Contato Inserido</title>
	</head>
	<body>
		<c:import url="header.jsp"></c:import>
		<h2>Contato ${param.nome} inserido com sucesso!</h2>
		<c:import url="footer.jsp"></c:import>
	</body>
</html>