package servlet.RewardandPunishservlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RewardandpunishDao;
import entity.rewardandpunishEntity;
import util.DBUtil;
import util.ThisSystemException;
@WebServlet("/rewandpunadd.do")
public class AddRewardandpunishServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String stu_id=req.getParameter("stu_id");
			
			String sRP_Info = req.getParameter("srp_info");
			String sRP_flag = req.getParameter("srp_flag");
			String srp_time=req.getParameter("srp_time");
			//业务逻辑          
			System.out.println(stu_id);
			RewardandpunishDao ddao = new RewardandpunishDao();
			rewardandpunishEntity de = new rewardandpunishEntity();
			de.setSRP_ID(DBUtil.uuid());
			de.setStu_SNo(stu_id);
			de.setSRP_Time(srp_time);
			de.setSRP_Info(sRP_Info);
			de.setSRP_flag(sRP_flag);
			ddao.insert(de);
			//奖励
			List<rewardandpunishEntity> de1 = new ArrayList<>();
			de1=ddao.selectallreward();
			req.setAttribute("list1", de1);
		  //惩罚
			List<rewardandpunishEntity> de0 = new ArrayList<>();
			de0=ddao.selectallpunishment();
			req.setAttribute("list0", de0);
			req.getRequestDispatcher("/jsp/teacherrewardandpunishment.jsp").forward(req, res);
		} catch (ThisSystemException e){
			req.setAttribute("message", e.getMessage());
		} catch (Exception e){
			e.printStackTrace();
			req.setAttribute("message", "系统繁忙，请稍后再试!");
		}
	}
}
