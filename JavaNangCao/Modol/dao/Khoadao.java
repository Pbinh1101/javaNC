package dao;

import java.util.ArrayList;

import bean.Khoabean;

public class Khoadao {
	public ArrayList<Khoabean> getkhoa(){
		 ArrayList<Khoabean> ds= new ArrayList<Khoabean>();
		 ds.add(new Khoabean("cntt", "Công nghệ thông tin"));
		 ds.add(new Khoabean("toan", "Khoa toán"));
		 ds.add(new Khoabean("ly", "Khoa vật lý"));
		 ds.add(new Khoabean("dia", "Khoa địa lý"));
		 return ds;
	 }
}
