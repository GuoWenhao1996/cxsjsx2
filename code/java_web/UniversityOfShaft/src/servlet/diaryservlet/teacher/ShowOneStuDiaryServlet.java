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

@WebServlet("/tshowonestudiary.do")
public class ShowOneStuDiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			//根据日志id查出对应日志
			String diaryId = req.getParameter("diaryid"); //用于找到对应的日志
			DiaryDao ddao = new DiaryDao();
			DiaryEntity de = new DiaryEntity();
			de = ddao.showDiary(diaryId);
			req.setAttribute("sd", de);
			//某学生基本信息
			String strSNo = req.getParameter("strsno");
			PersonalDataEntity ped = new PersonalDataEntity();
			StuDiaryDao sddao = new StuDiaryDao();
			ped = sddao.selectBySNo(strSNo);
			req.setAttribute("stuinfo", ped);
			//刷新日志列表
			List<DiaryEntity> lde0 = new ArrayList<>();
			lde0 = ddao.selectByType(strSNo, "0");
			req.setAttribute("list0", lde0);
			req.setAttribute("sod", "1"); //需要刷新
			
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
