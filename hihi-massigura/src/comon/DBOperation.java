package comon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBOperation {

	//DBパラメータ
    private String user  = "bpjmv_hihi";
    private String pass =  "Masshigura00";
    //接続先
    private String url = "jdbc:mariadb://public.bpjmv.tyo2.database-hosting.conoha.io/bpjmv_hihi";
    private Connection con = null;

    //DB接続
	public DBOperation() {
        //コネクションオブジェクト
        try {
            Class.forName("org.mariadb.jdbc.Driver");  // <- 修正
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        	System.out.println("Exception:" + e.getMessage());
        }
	}
	//SQLを実行しその結果を返す
	public ResultSet getSQL(String sql) {
		ResultSet result = null;
		try {
			PreparedStatement statement = con.prepareStatement(sql);
	        result = statement.executeQuery();
		}catch (Exception e) {
			System.out.println("Exception:" + e.getMessage());
		}
        return result;
	}
	//SQLを閉じる
	public void close(){
		try {
			con.close();
		}catch (Exception e) {
			System.out.println("Exception:" + e.getMessage());
		}
	}

	public void INSERTSet(String sql) {
		try {
			PreparedStatement statement = con.prepareStatement(sql);
			int num = statement.executeUpdate(sql);
		}catch (Exception e) {
			System.out.println("Exception:" + e.getMessage());
		}

	}
}
