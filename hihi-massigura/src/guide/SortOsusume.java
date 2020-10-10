package guide;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import comon.DBOperation;

public class SortOsusume {
	public enum EnemyElement{
		無属性,
		火属性,
		水属性,
		土属性,
		風属性,
		光属性,
		闇属性
	}
	public enum EnemyType{
		マグナ２,
		高級鞄,
		マリス,
		六竜,
		ヒヒコンテンツ,
		高難易度,
		その他
	}
	ArrayList<ArrayList<String>> enemyList = new ArrayList<ArrayList<String>>();
	Boolean type;
	public SortOsusume(Boolean type) {
		this.type = type;
		DBOperation db = new DBOperation();
		String sql = "SELECT * FROM enemy";
		ResultSet result = db.getSQL(sql);
		List<String[]> list = new ArrayList<String[]>();
		for(int i = 0;i < 7; i++) {
			enemyList.add(new ArrayList());
		}
		int n = 0;
		if (type) {
			n = 2;
		}else {
			n = 1;
		}
		try {
			while(result.next()) {
				String[] strs = { result.getString("enemy_name"), result.getString("enemy_element"), result.getString("enemy_type") };
				switch(strs[n]) {
					case "0":
						enemyList.get(0).add(strs[0]);
						break;
					case "1":
						enemyList.get(1).add(strs[0]);
						break;
					case "2":
						enemyList.get(2).add(strs[0]);
						break;
					case "3":
						enemyList.get(3).add(strs[0]);
						break;
					case "4":
						enemyList.get(4).add(strs[0]);
						break;
					case "5":
						enemyList.get(5).add(strs[0]);
						break;
					case "6":
						enemyList.get(6).add(strs[0]);
						break;
				}
			}
		}catch(Exception e) {

		}


	}

	public ArrayList<ArrayList<String>> getList(){
		return enemyList;
	}
	public String getLabel(int index) {
		if (type) {
			EnemyType[] values = EnemyType.values();
			return values[index - 1].toString();
		}else {
			EnemyElement[] values = EnemyElement.values();
			return values[index].toString();
		}
	}
}
