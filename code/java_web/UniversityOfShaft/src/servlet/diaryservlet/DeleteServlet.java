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
			req.setAttribute("mydel", "1"); //说明删除了东西
			req.setAttribute("sucmessage", "1"); //表示删除成功
			req.setAttribute("message", "删除成功！");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("sucmessage", "0"); //表示未成功
			req.setAttribute("message", "删除失败！");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (Exception e){
			req.setAttribute("sucmessage", "0"); //表示未成功
			req.setAttribute("message", "系统繁忙，请稍候再试!");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		}
	}
}
