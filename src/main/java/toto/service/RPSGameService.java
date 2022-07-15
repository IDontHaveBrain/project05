package toto.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.RPSGameDao;
import toto.vo.RPSGameResult;

@Service
public class RPSGameService {
	@Autowired(required = false)
	private RPSGameDao dao;

	public int getCurPoint(String id) {
		return dao.getCurPoint(id);
	}

	public RPSGameResult playRPS(String player, int curPoint, int bettingPoint, String curId, double odds) {
		int resultPoint = curPoint - bettingPoint;
		Map<String, Object> upt = new HashMap<>();
		upt.put("id", curId);
		upt.put("point", resultPoint);
		dao.updatePoint(upt);
		String[] com = { "가위", "바위", "보" };
		double comrandom = Math.random();
		int random = (int) Math.round(comrandom * (com.length)); // 컴퓨터 가위바위보 결과 값 랜덤으로 가져오기 com[random]
		int gameResult = 0;
		if ((player.equals("가위") && com[random].equals("가위")) || (player.equals("바위") && com[random].equals("바위"))
				|| (player.equals("보") && com[random].equals("보"))) {
			upt.put("point", curPoint);
			resultPoint = resultPoint + bettingPoint;
			gameResult = 2;
			dao.updatePoint(upt);
		} else if ((player.equals("가위") && com[random].equals("보")) || (player.equals("바위") && com[random].equals("가위"))
				|| (player.equals("보") && com[random].equals("바위"))) {
			upt.put("point", resultPoint + bettingPoint * odds);
			resultPoint += bettingPoint * odds;
			gameResult = 1;
		} else {
			upt.put("point", curPoint - bettingPoint);
			gameResult = 0;
		}
		RPSGameResult result = new RPSGameResult(0, curId, com[random], player, gameResult, curPoint, resultPoint);
		dao.insertRPSGameResult(result);
		return result;

	}
}
