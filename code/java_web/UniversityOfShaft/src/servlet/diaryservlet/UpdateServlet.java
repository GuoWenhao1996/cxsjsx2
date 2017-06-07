package servlet.diaryservlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import entity.DiaryEntity;
import util.ThisSystemException;
import util.ThisSystemUtil;

@WebServlet("/diaryupdate.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String streditId = req.getParameter("editdiaryname");
			String strTitle = req.getParameter("mytitle");
			String strContext = req.getParameter("mycontext");
			String strLimits = req.getParameter("radio01");
			System.out.println(streditId);
			System.out.println(strTitle);
			System.out.println(strContext);
			System.out.println(strLimits);
			//业务逻辑
			DiaryDao ddao = new DiaryDao();
			DiaryEntity de = new DiaryEntity();
			de.setL_ID(streditId);
			de.setL_Time(ThisSystemUtil.toNormalStringDate(new Date().toString()));
			de.setL_Title(strTitle);
			de.setL_Detail(strContext);
			de.setL_Limits(strLimits);
			ddao.updateDiary(de);
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("message", e.getMessage());
		} catch (Exception e){
			e.printStackTrace();
			req.setAttribute("message", "系统繁忙，请稍候再试!");
		}
	}
}
