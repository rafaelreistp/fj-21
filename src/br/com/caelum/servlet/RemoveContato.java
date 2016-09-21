package br.com.caelum.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@SuppressWarnings("serial")
@WebServlet("/removeContato")
public class RemoveContato extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Contato contato = new Contato();
		contato.setId(Long.parseLong(request.getParameter("id")));
		ContatoDao dao = new ContatoDao();
		dao.exclui(contato);
		
		RequestDispatcher rd = request.getRequestDispatcher("listaContatos.jsp");
		rd.forward(request,response);

	}

}
