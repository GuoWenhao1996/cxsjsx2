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

@WebServlet("/diaryedit.do")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			DiaryDao ddao = new DiaryDao();
			String strSNo = DBUtil.getCookieno(req);
			//String strSNo = "631406010102";
			String diaryId = req.getParameter("diaryid"); //用于找到对应的日志
			//用于刷新列表 start
			//公开日志
			List<DiaryEntity> lde0 = new ArrayList<>();
			lde0 = ddao.selectByType(strSNo, "0");
			req.setAttribute("list0", lde0);
			//私密日志
			List<DiaryEntity> lde1 = new ArrayList<>();
			lde1 = ddao.selectByType(strSNo, "1");
			req.setAttribute("list1", lde1);
			//end
			//找打需要编辑的当前日志
			DiaryEntity de = ddao.showDiary(diaryId);
			req.setAttribute("diaryId", diaryId);
			req.setAttribute("deTitle", de.getL_Title());
			req.setAttribute("deContent", de.getL_Detail());
			req.setAttribute("deLimits", de.getL_Limits());
			/*for(int i=0;i<2;i++) {
				System.out.println(lde0.get(i).toString());
			}
			for(int i=0;i<2;i++) {
				System.out.println(lde1.get(i).toString());
			}*/
			req.setAttribute("editname", "编辑"); //说明用户点击了编辑按钮，需要编辑对应的日志
			req.getRequestDispatcher("/jsp/Journal.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
