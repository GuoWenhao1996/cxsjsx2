package servlet.diaryservlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import entity.DiaryEntity;
import util.DBUtil;

@WebServlet("/diarylist.do")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			DiaryDao ddao = new DiaryDao();
			String strSNo = DBUtil.getCookieno(req);
			//String strSNo = "631406010102";
			//公开日志
			List<DiaryEntity> lde0 = new ArrayList<>();
			lde0 = ddao.selectByType(strSNo, "0");
			req.setAttribute("list0", lde0);
			//私密日志
			List<DiaryEntity> lde1 = new ArrayList<>();
			lde1 = ddao.selectByType(strSNo, "1");
			req.setAttribute("list1", lde1);
			/*for(int i=0;i<2;i++) {
				System.out.println(lde0.get(i).toString());
			}
			for(int i=0;i<2;i++) {
				System.out.println(lde1.get(i).toString());
			}*/
			req.setAttribute("ow", "0"); //说明用户提交了新的日志，需要刷新列表
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
