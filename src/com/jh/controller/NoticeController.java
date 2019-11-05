package com.jh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.action.ActionFoward;
import com.jh.notice.NoticeService;

/**
 * Servlet implementation class NoticeController
 */
@WebServlet("/NoticeController")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeService noticeService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeController() {
        super();
        // TODO Auto-generated constructor stub
        noticeService = new NoticeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String url = request.getServletPath();
		System.out.println(url);
		url = url.substring(url.lastIndexOf("/")+1, url.lastIndexOf("."));
		ActionFoward actionFoward = null;
		
		if(url.equals("noticeList")) {
			actionFoward = noticeService.noticeList(request, response);
			
		}else if(url.equals("noticeSelect")) {
			actionFoward = noticeService.noticeSelect(request, response);
			
		}else if(url.equals("noticeWrite")) {
			actionFoward = noticeService.noticeWrite(request, response);
			
		}else if(url.equals("noticeUpdate")) {
			actionFoward = noticeService.noticeUpdate(request, response);
			
		}
		
		

		/* boolean -> is foward redirect 결정*/
		if(actionFoward.isFlag()) {

			RequestDispatcher view = request.getRequestDispatcher(actionFoward.getPath());
			view.forward(request, response);
			
		}else {
			response.sendRedirect(actionFoward.getPath());
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
