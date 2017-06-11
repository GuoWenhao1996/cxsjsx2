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
	@WebServlet("/listtearewandpun.do")
	public class ListteacherrewandpundServlet extends HttpServlet {
			private static final long serialVersionUID = 1L;
			@Override
			protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
				try {
					req.setCharacterEncoding("UTF-8");
					RewardandpunishDao ddao = new RewardandpunishDao();
					//奖励
					List<rewardandpunishEntity> de1 = new ArrayList<>();
					de1=ddao.selectallreward();
					req.setAttribute("list1", de1);
				  //惩罚
					List<rewardandpunishEntity> de0 = new ArrayList<>();
					de0=ddao.selectallpunishment();
					req.setAttribute("list0", de0);
					req.getRequestDispatcher("/jsp/teacherrewardandpunishment.jsp").forward(req, res);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
