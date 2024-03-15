package controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.SQLException;

import DAO.CustomerDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import utils.MyUtils;
import utils.Router;

@WebServlet("/login" )
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginServlet() {
		// TODO Auto-generated constructor stub
		super();
	}

	// Hiển thị trang Login.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	// Khi người nhập userName & password, và nhấn Submit.
	// Phương thức này sẽ được thực thi.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Connection conn = MyUtils.getStoredConnection(request);
		HttpSession session = request.getSession();
		String numberPhone= request.getParameter("phoneNumber");
		
		
		String password= request.getParameter("ticketCode");


		Customer user = null;
		boolean hasError = false;
		String errorString = null;
		
		session.setAttribute("phone", numberPhone);
		try {
			// Tìm user trong DB.
			user = CustomerDAO.findUser(conn, numberPhone, password);
			
			if (user == null) {
				hasError = true;
				errorString = "Number phone or password invalid";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			hasError = true;
			errorString = e.getMessage();
		}
		// Trong trường hợp có lỗi,
		if (hasError) {
			user = new Customer();
			user.setPhone_number(numberPhone);
			user.setPassword(password);

			// Lưu các thông tin vào request attribute trước khi forward.
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher(Router.CHECK_TICKET_VIEW);
			
			dispatcher.forward(request, response);
		}
		// Trường hợp không có lỗi.
		// chuyển hướng sang trang userInfo.
		else {
			MyUtils.storeLoginedUser(session, user);
			
			// Redirect (Chuyển hướng) sang trang /userInfo.
			response.sendRedirect(request.getContextPath() + "/userInfo");
		}
	}
}
