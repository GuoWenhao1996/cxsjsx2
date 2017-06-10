package servlet.assessservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssessDao;

/**
 * 2017-6-7 11:19:40
 * 
 * 学生对学生的评价列表，用于页面跳转时显示
 * 
 * @author guowenhao
 * @version 2.0
 */
@WebServlet("/listAssessS2STeac.do")
public class ListStu2StuServletTeac extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			AssessDao assDao = new AssessDao();
			String sno =req.getParameter("SNo");

			// 学生评价列表
			String[][] stuArrayAss = assDao.selectAllAssS2S(sno);
			req.setAttribute("sAA", stuArrayAss);

			req.getRequestDispatcher("/jsp/EvaluateLookTeac.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
