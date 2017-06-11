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
import util.DBUtil;
import util.ThisSystemException;
import util.ThisSystemUtil;

@WebServlet("/diaryadd.do")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String strTitle = req.getParameter("mytitle");
			String strContext = req.getParameter("mycontext");
			String strLimits = req.getParameter("radio01");
			String strSNo = DBUtil.getCookieno(req);
			//业务逻辑
			DiaryDao ddao = new DiaryDao();
			DiaryEntity de = new DiaryEntity();
			de.setL_ID(DBUtil.uuid());
			de.setStu_SNo(strSNo);
			de.setL_Time(ThisSystemUtil.toNormalStringDate(new Date().toString()));
			de.setL_Title(strTitle);
			de.setL_Detail(strContext);
			de.setL_Limits(strLimits);
			ddao.insert(de);
			req.setAttribute("lflush", "1"); //用于标记用户写了新的日记，需要刷新列表
			req.setAttribute("sucmessage", "1"); //表示添加成功
			req.setAttribute("message", "添加成功！");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("sucmessage", "0"); //表示未成功
			req.setAttribute("message", "添加失败！");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (Exception e){
			req.setAttribute("sucmessage", "0"); //表示未成功
			req.setAttribute("message", "系统繁忙，请稍候再试!");
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		}
	}
}
