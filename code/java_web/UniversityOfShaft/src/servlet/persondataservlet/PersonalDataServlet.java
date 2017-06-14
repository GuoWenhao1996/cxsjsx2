package servlet.persondataservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonalDataDao;
import entity.PersonalDataEntity;
import util.DBUtil;
import util.ThisSystemException;

@WebServlet("/loadpersonaldata.do")
public class PersonalDataServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try{
			req.setCharacterEncoding("utf-8");
			String sno = DBUtil.getCookieno(req); //学号
			PersonalDataEntity pde = new PersonalDataEntity();
			PersonalDataDao peddao = new PersonalDataDao();
			pde = peddao.selectBySNo(sno);
			req.setAttribute("pd", pde);
			req.getRequestDispatcher("/jsp/PersonalData.jsp").forward(req, res);
			return;
		}catch(ThisSystemException e){
			req.setAttribute("message", e.getMessage());
		}catch(Exception e){
			e.printStackTrace();
			req.setAttribute("message", "登录失败");
		}
		req.getRequestDispatcher("/jsp/Login.jsp").forward(req, res);
	}
}
