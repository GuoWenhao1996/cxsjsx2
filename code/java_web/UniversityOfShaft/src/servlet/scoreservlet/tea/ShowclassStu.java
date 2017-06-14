package servlet.scoreservlet.tea;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.teacher.StuDiaryDao;
import entity.PersonalDataEntity;
import util.ThisSystemException;

@WebServlet("/tshowclass.do")
public class ShowclassStu extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			//查出班级
			String className = req.getParameter("classname"); //用于找到对应的日志
			List<PersonalDataEntity> pde = new ArrayList<>();
			StuDiaryDao sddao = new StuDiaryDao();
			pde = sddao.showClassStus(className);
			req.setAttribute("callstu", pde);
			//刷新列表
			String[] lsd = sddao.tListClass();
			req.setAttribute("lsd", lsd);
			req.setAttribute("cname", className);
			req.setAttribute("classshow", "1"); //需要刷新
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
