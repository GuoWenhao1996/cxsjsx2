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
import util.ThisSystemUtil;

/**
 * 2017-6-10 18:43:06
 * 
 * 添加学生对学生的评价
 * 
 * @author guowenhao
 * @version 1.0
 *
 */
@WebServlet("/AddStuAssess.do")
public class AddStuAssOthersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			req.getCharacterEncoding();
			AssessDao assDao = new AssessDao();
			String sno = DBUtil.getCookieno(req);

			String stuNo = req.getParameter("SNo");
			String assess = req.getParameter("ass");
			String relationship = req.getParameter("rel");

			// 插入学生A对学生B的评价
			AssessEntity ae = new AssessEntity();
			ae.setA_Id(DBUtil.uuid());
			ae.setStu_SNo(stuNo);// 学生B
			ae.setA_PersonNo(sno);// 学生A
			ae.setA_DataTime(ThisSystemUtil.getSystemTime());
			ae.setA_Context(assess);
			ae.setA_Relationship(relationship.toUpperCase());
			assDao.insertStuAss(ae);

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
			String[][] stuArrayAss = assDao.selectAllStuAss(sno);
			req.setAttribute("sAA", stuArrayAss);
			req.getRequestDispatcher("/jsp/Evaluate.jsp").forward(req, res);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
