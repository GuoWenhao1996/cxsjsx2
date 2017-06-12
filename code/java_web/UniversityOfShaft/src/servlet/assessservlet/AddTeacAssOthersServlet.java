package servlet.assessservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssessDao;
import entity.AssessEntity;
import util.DBUtil;
import util.ThisSystemUtil;

/**
 * 2017-6-10 21:17:21
 * 
 * 添加老师对学生的评价
 * 
 * @author guowenhao
 * @version 1.0
 *
 */
@WebServlet("/AddTeacAssess.do")
public class AddTeacAssOthersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			req.getCharacterEncoding();
			AssessDao assDao = new AssessDao();
			String tno = DBUtil.getCookieno(req);

			String stuNo = req.getParameter("SNo");
			String assess =req.getParameter("ass");
			String relationship = req.getParameter("rel");

			// 插入老师对学生的评价
			AssessEntity ae = new AssessEntity();
			ae.setA_Id(DBUtil.uuid());
			ae.setStu_SNo(stuNo);// 学生
			ae.setA_PersonNo(tno);// 老师
			ae.setA_DataTime(ThisSystemUtil.getSystemTime());
			ae.setA_Context(assess);
			ae.setA_Relationship(relationship.toUpperCase());
			assDao.insertTeacAss(ae);

			// 学生列表
			String[][] stuArrayAss = assDao.selectAllStuAssTeac(tno);
			req.setAttribute("sAA", stuArrayAss);
			req.getRequestDispatcher("/jsp/EvaluateTeac.jsp").forward(req, res);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
