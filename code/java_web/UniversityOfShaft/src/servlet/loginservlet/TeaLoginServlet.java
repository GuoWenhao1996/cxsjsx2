package servlet.loginservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TealoginDao;
import entity.TealoginEntity;
import util.ThisSystemException;
import util.ThisSystemUtil;

@WebServlet("/TeaLogin.do")
public class TeaLoginServlet extends HttpServlet{
	
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
			TealoginDao dao=new TealoginDao();
			TealoginEntity u=dao.selectBySno(account);
			if(u==null){
				throw new ThisSystemException("不存在此账号");
			}
			if(!u.getUT_Password().equals(password)){
				throw new ThisSystemException("密码错误");
			}			
			req.setAttribute("userno", account);
			req.setAttribute("username", u.getUT_NickName());
			Cookie cookieNo = new Cookie("cookieNo", account); 
			cookieNo.setMaxAge(60*60);
			res.addCookie(cookieNo);
			req.getRequestDispatcher("/jsp/tnavigation.jsp").forward(req, res);
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
