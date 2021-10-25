package dao;

import java.util.ArrayList;

import bean.SinhVienbean;

public class SinhViendao {
	public ArrayList<SinhVienbean> getsv(){
   	 ArrayList<SinhVienbean> ds= new ArrayList<SinhVienbean>();
   	 ds.add(new SinhVienbean("sv1", "Nguyễn Tăng Ngọc Thiện", "Huế", 5.0, "cntt"));
   	 ds.add(new SinhVienbean("sv2", "Nguyễn Thanh Nam 2", "Huế", 7.5, "cntt"));
   	 ds.add(new SinhVienbean("sv3", "Nguyễn Thanh Nam 4", "Đà nẵng", 7.5, "toan"));
   	 ds.add(new SinhVienbean("sv4", "Nguyễn Thanh Nam 5", "Huế", 7.5, "cntt"));
   	 ds.add(new SinhVienbean("sv5", "Nguyễn Văn Quý", "Quảng Trị", 7.5, "ly"));
   	ds.add(new SinhVienbean("sv6", "Trần Ngọc Phương", "Quảng Bình", 7.5, "dia"));
   	ds.add(new SinhVienbean("sv7", "Nguyễn An", "Quảng Trị", 7.2, "dia"));
	return ds;
	}
}
