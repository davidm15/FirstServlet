package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PlanetBookManager;
import model.PlanetBookModel;

/**
 * Servlet implementation class GustBookServlet
 */
@WebServlet("/planet")
public class PlanetBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlanetBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 
			// -------------------------------------------------
			// get the Session for the user
			// and
			// get the ServletContext
			// -------------------------------------------------
	 
			HttpSession session = request.getSession();
			ServletContext servletContext = getServletContext();
	 
			// -------------------------------------------------
			// get data out of request
			// -------------------------------------------------
			String name = request.getParameter("name");
			String surface = request.getParameter("surface");
			String size = request.getParameter("size");
			
			Float newSize = Float.parseFloat(size);
			
			String scope = request.getParameter("scope");
			
			
	 
			// -------------------------------------------------
			// Store data in a new guestbook object	
			// -------------------------------------------------
			PlanetBookModel planetBookModel = new PlanetBookModel(name,surface,newSize);
	 
			// -------------------------------------------------
			// Try to find a GuestBook Manager
			// Such object could be in the Session or in the ServletContext
			// choose the right one based on users choice
			// -------------------------------------------------
	 
			PlanetBookManager pbm = null;
	 
			if (scope.equals("session")) {
				pbm=(PlanetBookManager)session.getAttribute("pbm");			
			} else {
				pbm=(PlanetBookManager)servletContext.getAttribute("pbm");			
			}
	 
			// -------------------------------------------------
			// Hm, no GuestbookManager in the desired scope (session/servletContext) available???
			// So it must be the first time -> we have to create one
			// -------------------------------------------------
			if (pbm==null) {
				pbm = new PlanetBookManager();
	 
				// -------------------------------------------------
				// OK, now we have a new GuestBookManager, store it for later use
				// -------------------------------------------------
				if (scope.equals("session")) {
					session.setAttribute("pbm",pbm);			
				} else {
					servletContext.setAttribute("pbm",pbm);			
				}
			}
	 
			// -------------------------------------------------
			// add the new GuestBook entry to the other entries
			// GuestBookManager knows how to do it
			// -------------------------------------------------
	 
			pbm.add(planetBookModel);
			float diameters = pbm.getSum();
			float averageDia = pbm.getAverage();
			// -------------------------------------------------
			// We are done, "forward" to the web page to display 
			// the content of both GuestBookManagers 
			// - the one in the session and  
			// - the one in the servlet context
			// -------------------------------------------------
	 
			request.setAttribute("sizes", diameters);
			request.setAttribute("avg", averageDia);
			RequestDispatcher rd = request.getRequestDispatcher("/show.jsp");
			rd.forward(request, response);
			return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
