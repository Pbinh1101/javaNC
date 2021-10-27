package dao;

import java.util.ArrayList;

import bean.SinhVienbean;

public class SinhViendao {
	public ArrayList<SinhVienbean> getsv(){
		ArrayList<SinhVienbean> ds = new ArrayList<SinhVienbean>();		
		 ds.add(new SinhVienbean("sv1", "Nguyễn Thanh Nhật ", "Huế", 7.5, "cntt"));
    	 ds.add(new SinhVienbean("sv2", "Hồ Thanh Nam ", "Huế", 8.5,"toan"));
    	 ds.add(new SinhVienbean("sv3", "Nguyễn Trần Hòa ", "Dà nẵng", 9,"dia"));
    	 ds.add(new SinhVienbean("sv4", "Phan Minh Nhất ", "Thành phố Hồ Chí Minh", 5 ,"ly"));
		return ds;
	}
}