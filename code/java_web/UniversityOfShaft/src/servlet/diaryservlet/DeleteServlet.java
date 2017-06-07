package servlet.diaryservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import util.ThisSystemException;

@WebServlet("/diarydelete.do")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String diaryId = req.getParameter("diaryid"); //用于找到对应的日志
			//业务逻辑
			DiaryDao ddao = new DiaryDao();
			ddao.deleteDiary(diaryId);
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("message", e.getMessage());
		} catch (Exception e){
			e.printStackTrace();
			req.setAttribute("message", "系统繁忙，请稍候再试!");
		}
	}
}
