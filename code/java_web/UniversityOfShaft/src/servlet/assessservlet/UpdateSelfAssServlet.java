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
 * 2017-6-8 15:37:28
 * 
 * 修改自我评价，并将修改后的内容传回数据库以及当前页面
 * 
 * @author guowenhao
 * @version 1.0
 *
 */
@WebServlet("/UpdateSelfAssess.do")
public class UpdateSelfAssServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			AssessDao assDao = new AssessDao();
			String sno = DBUtil.getCookieno(req);
			String selfAssess = req.getParameter("selfAssess");


			// 修改自我评价
			assDao.updateStuSelfAss(sno, selfAssess);
			req.setAttribute("sA", selfAssess);

			// 教师对学生的评价
			List<AssessEntity> assTeac = new ArrayList<>();
			assTeac = assDao.selectBySNoFromTeacAss(sno);
			req.setAttribute("aT", assTeac);

			// 学生对学生的评价
			List<AssessEntity> assStu = new ArrayList<>();
			assStu = assDao.selectBySNoFromStuAss(sno);
			req.setAttribute("aS", assStu);


			// 学生列表
			String[][] stuArrayAss = assDao.selectAllStuAss();
			req.setAttribute("sAA", stuArrayAss);

			req.getRequestDispatcher("/jsp/Evaluate.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
