package dao;

import java.util.ArrayList;

import bean.khoabean;

public class khoadao {
	public ArrayList<khoabean> getkhoa(){
		ArrayList<khoabean> ds = new ArrayList<khoabean>();
		 ds.add(new khoabean("cntt", "Công nghệ thông tin"));
		 ds.add(new khoabean("toan", "Khoa toán"));
		 ds.add(new khoabean("ly", "Khoa vật lý"));
		 ds.add(new khoabean("dia", "Khoa địa lý"));
		 return ds;
	}
}
