package dao;

import java.util.ArrayList;

import bean.KhachHangbean;

public class KhachHangdao {
     public	ArrayList<KhachHangbean> getkhachhang(){
		ArrayList<KhachHangbean> ds = new ArrayList<KhachHangbean>();
		ds.add(new KhachHangbean("ngocthien2508@gmail.com","Nguyễn Tăng Ngọc Thiện","Huế","123456"));
		ds.add(new KhachHangbean("nguyenvanan123@gmail.com","Nguyễn Văn An","Quảng Trị","123456"));
		ds.add(new KhachHangbean("tranthihoa123@gmail.com","Trần Thị Hoa","Quảng Bình","123456"));
		ds.add(new KhachHangbean("hovancuong123@gmail.com","Hồ Văn Cường","Huế","123456"));
		return ds;
	}

}
