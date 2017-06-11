package servlet.diaryservlet.teacher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import dao.teacher.StuDiaryDao;
import entity.DiaryEntity;
import entity.PersonalDataEntity;
import util.ThisSystemException;

@WebServlet("/tliststudiary.do")
public class ListStuDiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String strSNo = req.getParameter("strsno");
			//某学生基本信息
			PersonalDataEntity ped = new PersonalDataEntity();
			StuDiaryDao sddao = new StuDiaryDao();
			ped = sddao.selectBySNo(strSNo);
			req.setAttribute("stuinfo", ped);
			//对应的日志
			DiaryDao ddao = new DiaryDao();
			List<DiaryEntity> lde0 = new ArrayList<>();
			lde0 = ddao.selectByType(strSNo, "0");
			req.setAttribute("list0", lde0);
			req.setAttribute("sld", "1");
			
			req.getRequestDispatcher("/jsp/teacher/tShowStudentDiary.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("message", "操作失败！");
			e.printStackTrace();
			req.getRequestDispatcher("/jsp/teacher/tShowStudentDiary.jsp").forward(req, res);
		} catch (Exception e){
			req.setAttribute("message", "系统繁忙，请稍候再试!");
			req.getRequestDispatcher("/jsp/teacher/tShowStudentDiary.jsp").forward(req, res);
		}
	}
}
