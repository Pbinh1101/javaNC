package dao;
 
import java.util.ArrayList;
 
import bean.khachhangbean;
 
public class khachhangdao {
	public ArrayList<khachhangbean> getkh(){
		ArrayList<khachhangbean> ds= new ArrayList<khachhangbean>();
		ds.add(new khachhangbean("KH1","Nguyễn Phước Bình","Huế","123"));
		ds.add(new khachhangbean("KH2","Nguyễn Thị Lài","Sài Gòn","456"));
		ds.add(new khachhangbean("KH3","Nguyễn Văn Hùng","Đà Nẵng","789"));
		ds.add(new khachhangbean("KH4","Nguyễn Quảng Bình","Quảng Trị","321"));
		ds.add(new khachhangbean("KH5","Nguyễn Lê Hoa","Hà Nội","321"));
		return ds;
	}

	
}