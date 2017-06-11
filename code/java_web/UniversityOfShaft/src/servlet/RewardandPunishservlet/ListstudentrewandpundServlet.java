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
@WebServlet("/liststudenterewandpun.do")
public class ListstudentrewandpundServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			try {
				req.setCharacterEncoding("UTF-8");
				RewardandpunishDao ddao = new RewardandpunishDao();
				String strSNo = DBUtil.getCookieno(req);//获取网页里面的学号
				//奖励
				List<rewardandpunishEntity> de1 = new ArrayList<>();
				de1 = ddao.selectByType(strSNo, "1");
				req.setAttribute("list1", de1);
				//惩罚
				List<rewardandpunishEntity> de0 = new ArrayList<>();
				de0 = ddao.selectByType(strSNo, "0");
				req.setAttribute("list0", de0);
				req.getRequestDispatcher("/jsp/studentRewardsAndPunishment.jsp").forward(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
