package servlet.scoreservlet.tea;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.teacher.StuDiaryDao;
import util.ThisSystemException;

@WebServlet("/listofclass.do")
public class ListofClass extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			StuDiaryDao sddao = new StuDiaryDao();
			String[] lsd = sddao.tListClass();
			req.setAttribute("lsd", lsd);
			req.setAttribute("clist", "1");
			req.getRequestDispatcher("/jsp/teacher/tStudentScore.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("message", "操作失败！");
			e.printStackTrace();
			req.getRequestDispatcher("/jsp/teacher/tStudentScore.jsp").forward(req, res);
		} catch (Exception e){
			req.setAttribute("message", "系统繁忙，请稍候再试!");
			req.getRequestDispatcher("/jsp/teacher/tStudentScore.jsp").forward(req, res);
		}
	}

}
