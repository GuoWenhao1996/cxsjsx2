package servlet.scoreservlet.tea;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ScoreDao;
import entity.ScoreEntity;
import util.DBUtil;

@WebServlet("/ScoreAnalysis.do")
public class ScoreAnalysis extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String Sno=req.getParameter("strsno");
		String term=req.getParameter("term");
		List<ScoreEntity> score=new ArrayList<>();	
		ScoreDao dao=new ScoreDao();
		try {
			score=dao.selectByNoandTerm(Sno, term);
			req.setAttribute("data", score);
			req.setAttribute("sno", Sno);
			req.setAttribute("term", term);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/jsp/teacher/Stuscoreanalysis.jsp").forward(req, res);	
	
		
	}

}
