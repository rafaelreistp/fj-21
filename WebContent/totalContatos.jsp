<%@page import="br.com.caelum.agenda.dao.ContatoDao,
 java.util.List"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Total Contatos</title>
	</head>
	<body>
		<h1>
			O n�mero total de contatos na agenda �:
			<%= new ContatoDao().getLista().size() %> 
		</h1>
	</body>
</html>