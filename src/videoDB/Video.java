package videoDB;

import java.sql.*;

public class Video{
	
	protected String name;		//Ӱ������
	protected String zhuyan;	//��Ʒ��˾
	protected float price;		//���۸� 
	protected int days;			//�������
	
	public Video(String _name,int _days) {
		try
		{
			DBSQL dbsm = new DBSQL();
 			String sql="SELECT name,zhuyan,price FROM tb_videoinfo WHERE name='"+_name+"'";
 			dbsm.setSqlStr(sql);
			dbsm.Query();
			ResultSet rs =  dbsm.getRs();
			rs.next();
			name = _name;
			days=_days;
			zhuyan = rs.getString("zhuyan");
			price = rs.getFloat("price");
			dbsm.close();
		}
		catch (Exception e) {
			System.out.println(e.toString());
		}	
	}
	
	public void setname(String newname) {
	        this.name = newname;
	    	}
	    	
	public String getname() {
		return name;
	}

	public void setzhuyan(String newzhuyan) {
	        this.zhuyan = newzhuyan;
	    	}
	    	
	public String getzhuyan() {
		return zhuyan;
	}

	public void setPrice(float newPrice) {
	        this.price = newPrice;
	    	}
	    	
	public float getPrice() {
		return price;
	}
	
	public void setDays(int newDays) {
        this.days = newDays;
    }
    	
	public int getDays() {
		return days;
	}
};
