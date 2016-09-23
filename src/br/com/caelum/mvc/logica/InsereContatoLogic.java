package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class InsereContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
			Connection connection = (Connection) req.getAttribute("conexao");
			ContatoDao dao = new ContatoDao(connection);
			Contato contato = new Contato();
			contato.setNome(req.getParameter("nome"));
			contato.setEmail(req.getParameter("email"));
			contato.setEndereco(req.getParameter("endereco"));
			
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Calendar cal = Calendar.getInstance();
			cal.setTime(sdf.parse(req.getParameter("dataNascimento")));		
			contato.setDataNascimento(cal);
			
			dao.adiciona(contato);
		return "mvc?logica=ListaContatosLogic";
	}

}
