package com.notemaker.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.notemaker.entity.Note;
import com.notemaker.helper.FactoryProvider;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try {
				
                String title = request.getParameter("title");
                String content = request.getParameter("content");
                int noteId = Integer.parseInt(request.getParameter("noteId"));
                
                Session session = FactoryProvider.getFactory().openSession();
                Transaction transaction = session.beginTransaction();
                Note note = (Note)session.get(Note.class, noteId);
                note.setTitle(title);
                note.setContent(content);
                transaction.commit();
                session.close();
                response.sendRedirect("all_notes.jsp");
            	
            	
			} catch (Exception e) {
				// TODO: handle exception
			}
	}

}
