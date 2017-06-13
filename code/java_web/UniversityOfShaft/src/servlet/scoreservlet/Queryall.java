package servlet.scoreservlet;

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

@WebServlet("/Queryallscore.do")
public class Queryall extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String Sno=DBUtil.getCookieno(req);
		List<ScoreEntity> score=new ArrayList<>();		
		ScoreDao dao=new ScoreDao();
		try {
			score=dao.selectByNo(Sno);
			req.setAttribute("data", score);
			req.getSession().setAttribute("resultList", score);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/jsp/ScoreQuery.jsp").forward(req, res);
		
	}

}
