package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		ContatoDao dao = new ContatoDao();
		Contato contato = new Contato();
		contato.setId(Long.parseLong(req.getParameter("id")));
		dao.exclui(contato);
		
		return ("listaContatos.jsp");
	}

}
