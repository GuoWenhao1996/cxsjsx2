package servlet.loginservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import dao.StuloginDao;
import entity.StuloginEntity;
import util.ThisSystemException;
import util.ThisSystemUtil;

@WebServlet("/StuLogin.do")
public class StuLoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try{
			req.setCharacterEncoding("utf-8");
			String account=req.getParameter("username");
			String password=req.getParameter("password");
			if(ThisSystemUtil.isNone(account)){
				throw new ThisSystemException("账号不能为空");	
			}
			if(ThisSystemUtil.isNone(password)){
				throw new ThisSystemException("密码不能为空");	
			}
			StuloginDao dao=new StuloginDao();
			StuloginEntity u=dao.selectBySno(account);
			if(u==null){
				throw new ThisSystemException("不存在此账号");
			}
			if(!u.getUS_Password().equals(password)){
				throw new ThisSystemException("密码错误");
			}			
			System.out.println(2);
			req.setAttribute("userno", account);
			req.setAttribute("username", u.getUS_Name());
//			req.getRequestDispatcher("/jsp/PersonalData.jsp").forward(req, res);
			req.getRequestDispatcher("/jsp/navigation.jsp").forward(req, res);
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
