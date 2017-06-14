package servlet.loginservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			System.out.println("ready："+ThisSystemUtil.getSystemTime());
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
				throw new ThisSystemException("此学生账号不存在");
			}
			if(!u.getUS_Password().equals(password)){
				throw new ThisSystemException("密码错误");
			}			
			req.setAttribute("userno", account);
			req.setAttribute("username", u.getUS_Name());
			Cookie cookieNo = new Cookie("cookieNo", account); 
			cookieNo.setMaxAge(60*60);
			res.addCookie(cookieNo);
			System.out.println("go："+ThisSystemUtil.getSystemTime());
			System.out.println("sno："+account);
			req.getRequestDispatcher("/jsp/navigation.jsp").forward(req, res);
			return;
		}catch(ThisSystemException e){
			System.out.println("stu-errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr："+ThisSystemUtil.getSystemTime());
			req.setAttribute("message", e.getMessage());
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("stu-errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr："+ThisSystemUtil.getSystemTime());
			req.setAttribute("message", "登录失败");
		}
		req.getRequestDispatcher("/jsp/Login.jsp").forward(req, res);
	}
}
