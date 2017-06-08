package servlet.assessservlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssessDao;
import entity.AssessEntity;
import util.DBUtil;

/**
 * 2017-6-7 11:19:40
 * 
 * 教师对学生的评价列表，用于页面跳转时显示
 * 
 * @author guowenhao
 * @version 2.0
 */
@WebServlet("/listAssess.do")
public class ListAssessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			AssessDao assDao = new AssessDao();
			String sno = DBUtil.getCookieno(req);

			// 教师对学生的评价
			List<AssessEntity> assTeac = new ArrayList<>();
			assTeac = assDao.selectBySNoFromTeacAss(sno);
			req.setAttribute("aT", assTeac);

			// 学生对学生的评价
			List<AssessEntity> assStu = new ArrayList<>();
			assStu = assDao.selectBySNoFromStuAss(sno);
			req.setAttribute("aS", assStu);

			// 自我评价
			String selfAss = assDao.showSelfAssess(sno);
			req.setAttribute("sA", selfAss);

			// 学生列表
			String[][] stuArrayAss = assDao.selectAllStuAss();
			req.setAttribute("sAA", stuArrayAss);

			req.getRequestDispatcher("/jsp/Evaluate.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
