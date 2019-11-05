package com.jh.notice;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.action.ActionFoward;
import com.jh.util.DBConnector;
import com.sun.xml.internal.ws.api.ha.StickyFeature;

public class NoticeService {

	private NoticeDAO noticeDAO;

	public NoticeService() {
		noticeDAO = new NoticeDAO();
	}

	public ActionFoward noticeWrite(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();

		String method = request.getMethod();

		System.out.println(method);

		if(method.equals("POST")) {
			try {
				Connection con = DBConnector.getConnection();
				NoticeDTO noticeDTO = new NoticeDTO();
				noticeDTO.setTitle(request.getParameter("title"));
				noticeDTO.setWriter(request.getParameter("writer"));
				noticeDTO.setContents(request.getParameter("contents"));

				int result = noticeDAO.noticeWrite(con, noticeDTO);

				con.close();


				String message = "Write Fail";
				if(result>0) {
					message = "Write";
				}else {

				}
				request.setAttribute("msg", message);
				request.setAttribute("path", "./noticeList.notice");
				RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
				view.forward(request, response);


			}catch (Exception e) {
				// TODO: handle exception
			}
		}else {
			actionFoward.setFlag(true);
			actionFoward.setPath("./noticeWrite.jsp");			



		}

		return actionFoward;
	}



	public ActionFoward noticeUpdate(HttpServletRequest request, HttpServletResponse response) {
		ActionFoward actionFoward = new ActionFoward();
		String method = request.getMethod();

		if(method.equals("POST")) {		
			try {
				Connection con = DBConnector.getConnection();
				NoticeDTO noticeDTO  = new NoticeDTO();
				noticeDTO.setNum(Integer.parseInt(request.getParameter("num")));
				noticeDTO.setTitle(request.getParameter("title"));
				noticeDTO.setContents(request.getParameter("contents"));
				int result  = noticeDAO.noticeUpdate(con, noticeDTO);
				con.close();
				actionFoward.setFlag(true);
				actionFoward.setPath("../common/common_result.jsp");
				request.setAttribute("path","./noticeList.notice"); 
				
				String message = "Update Fail List"; 
				if(result>0) { 
					message = "Update Success"; 
					
				}
				
				request.setAttribute("msg", message); 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}



		}else {
			int num = Integer.parseInt(request.getParameter("num"));
			try {
				Connection con = DBConnector.getConnection();
				NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num);
				request.setAttribute("noticeDTO", noticeDTO);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			actionFoward.setFlag(true);
			actionFoward.setPath("./noticeUpdate.jsp");	

		}
		return actionFoward;
	}



	public ActionFoward noticeList(HttpServletRequest request, HttpServletResponse response) {
		//DAO 보내기전 전처리 작업
		//DAO 호출 후 후처리 작업 
		ActionFoward actionFoward = new ActionFoward();
		try {
			Connection con;
			con = DBConnector.getConnection();

			ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con); /* DAO에서 받아옴 */
			con.close();
			request.setAttribute("list", ar); /* key는 개발자가 */
			actionFoward.setFlag(true); /* actionfoward에 담아서 보냄 */
			actionFoward.setPath("./noticeList.jsp");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return actionFoward;
	}


	public ActionFoward noticeSelect(HttpServletRequest request, HttpServletResponse response){
		ActionFoward actionFoward = new ActionFoward();

		try {
			Connection con = DBConnector.getConnection();
			int num = Integer.parseInt(request.getParameter("num"));

			/* DAO에서 받아옴 */
			NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num); 
			if(noticeDTO != null) {
				request.setAttribute("noticeDTO", noticeDTO); /* or dto */
				actionFoward.setFlag(true);
				actionFoward.setPath("./noticeSelect.jsp");

			}else {
				actionFoward.setFlag(false); /* redirect */
				actionFoward.setPath("./noticeList.notice"); /* controller */

			}
			con.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		return actionFoward;
	}




}
