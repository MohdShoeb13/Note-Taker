package com.notemaker.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.notemaker.entity.Note;
import com.notemaker.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title, content, new Date());
			System.out.println("Before hybernate");
			//Hibernate Save
			
			Session session = FactoryProvider.getFactory().openSession();
			System.out.println("Factory worked");
			Transaction transaction = session.beginTransaction();
			session.save(note);
			transaction.commit();
			session.close();
	        response.sendRedirect("all_notes.jsp");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
