package br.com.caelum.agenda.filtro;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class FiltroTempoDeExecucao implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		Long tInicial = System.currentTimeMillis();
		chain.doFilter(req, res);
		Long tFinal = System.currentTimeMillis();
		
		String uri = ((HttpServletRequest)req).getRequestURI();
		String parametros = ((HttpServletRequest)req).getParameter("logica");
		System.out.println("Tempo da requisição de " + uri + "?logica=" + parametros +
				" demorou (ms): " + (tFinal-tInicial));
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}



}
