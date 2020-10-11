package guide;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import comon.DBOperation;

public class SortGuide {
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
	ArrayList<ArrayList<String[]>> enemyList = new ArrayList<ArrayList<String[]>>();
	Boolean type;
	public SortGuide(Boolean type) {
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
			n = 3;
		}else {
			n = 2;
		}
		try {
			while(result.next()) {
				String[] strs = { result.getString("enemy_id"), result.getString("enemy_name"), result.getString("enemy_element"), result.getString("enemy_type") };
				int num = Integer.parseInt(strs[n]);
				String[] enemy = { strs[0], strs[1]};
				enemyList.get(num).add(enemy);
			}
		}catch(Exception e) {

		}


	}

	public ArrayList<ArrayList<String[]>> getList(){
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
