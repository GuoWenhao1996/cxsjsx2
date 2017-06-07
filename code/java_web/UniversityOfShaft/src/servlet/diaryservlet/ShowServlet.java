package servlet.diaryservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import entity.DiaryEntity;

@WebServlet("/diaryshow.do")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String diaryId = req.getParameter("diaryid"); //用于找到对应的日志
			//System.out.println(diaryId);
			DiaryDao ddao = new DiaryDao();
			DiaryEntity de = ddao.showDiary(diaryId);
			req.setAttribute("deTitle", de.getL_Title());
			req.setAttribute("deContent", de.getL_Detail());
			req.setAttribute("deLimits", de.getL_Limits());
			//System.out.println(de.getL_Title());
			//System.out.println(de.getL_Detail());
			//System.out.println(de.getL_Limits());
			req.setAttribute("ow", "1"); //说明用户点击了查看某一篇日志，作为打开某一篇日志的标志
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
