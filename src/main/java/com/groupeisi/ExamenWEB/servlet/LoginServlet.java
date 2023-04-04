package com.groupeisi.ExamenWEB.servlet;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupeisi.ExamenEJB.dao.ICv;
import com.groupeisi.ExamenEJB.dao.ICvImpl;
import com.groupeisi.ExamenEJB.entities.cv;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  @EJB
	  private ICv icvimpl;
    
    public LoginServlet() {
        super();
    }

	
	public void init(ServletConfig config) throws ServletException {
		
		this.icvimpl = new ICvImpl();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cv c = new cv();
		List<cv> cvs = icvimpl.list(c);
		request.setAttribute("cvs",cvs);
		request.getRequestDispatcher("WEB-INF/login/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // R�cup�rer les identifiants et mots de passe saisis par l'utilisateur
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    
	    cv c = new cv();
	    c = icvimpl.isValid(email, password, c);
	    
	    // V�rifier si les identifiants et mots de passe sont valides
	    if (c != null) {
	    	
	        // Cr�er une session utilisateur
	        HttpSession session = request.getSession(true);
	        session.setAttribute("email", email);
	        //session.setAttribute("permissions", getPermissions(email));

	        // Rediriger l'utilisateur vers la page autoris�e
	        response.sendRedirect("accueil.jsp");
	    } else {
	        // Renvoyer l'utilisateur � la page de connexion avec un message d'erreur
	        request.setAttribute("error", "Invalid email or password");
	        request.getRequestDispatcher("login.jsp").forward(request, response);
	    }
	}

  


}
