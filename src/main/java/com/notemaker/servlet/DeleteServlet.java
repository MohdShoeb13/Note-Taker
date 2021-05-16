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

public class DeleteServlet extends HttpServlet {

 
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		try {
			   int noteId = Integer.parseInt(request.getParameter("note_id"));
			   
			   Session session = FactoryProvider.getFactory().openSession();
			   Transaction transaction = session.beginTransaction();
			   Note note = (Note)session.get(Note.class, noteId);
			   session.delete(note);
			   transaction.commit();
			   session.close();
			   response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}


}
