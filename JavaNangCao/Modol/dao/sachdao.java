package dao;

import java.util.ArrayList;
import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		   ArrayList<sachbean> ds= new ArrayList<sachbean>();
		   ds.add(new sachbean("s1", "Cấu trúc dữ liệu", "Đỗ Ngọc", (long)120000, (long)1000,"b11.jpg", "cntt"));
		   ds.add(new sachbean("s2", "Cơ sở dữ liệu", "Đỗ Ngọc", (long)120000, (long)1000,"b12.jpg", "cntt"));
		   ds.add(new sachbean("s3", "lập trình Java", "Quách Tuấn Ngọc", (long)120000, (long)1000,"b14.jpg", "cntt"));
		   ds.add(new sachbean("s11", "Cấu trúc dữ liệu1", "Đỗ Ngọc", (long)120000,(long)1000,"b21.jpg", "cntt"));
		   ds.add(new sachbean("s22", "Cơ sở dữ liệu2", "Đỗ Ngọc", (long)120000, (long)1000,"b22.jpg", "cntt"));
		   ds.add(new sachbean("s33", "lập trình Java3", "Quách Tuấn Ngọc", (long)120000, (long)1000,"b24.jpg", "cntt"));
		   ds.add(new sachbean("s4", "Đại chất công trình", "Đỗ Ngọc", (long)120000, (long)1000,"b16.jpg", "dia"));
		   ds.add(new sachbean("s55", "Sinh học Con người", "Đỗ Ngọc Quyên", (long)120000, (long)1000,"k15.jpg", "sinh"));
		   ds.add(new sachbean("s56", "Con Người", "Đỗ Ngọc Nam", (long)120000, (long)1000,"h1.jpg", "yte"));
		   ds.add(new sachbean("s57", "Giải phuẩt", "Đỗ Ngọc Nữ", (long)120000, (long)1000,"h2.jpg", "yte"));
		   ds.add(new sachbean("s58", "Sinh học Môi Trường", "Đỗ Ngọc Nam", (long)120000, (long)1000,"h3.jpg", "sinh"));
		   ds.add(new sachbean("s59", "Vật lý cơ bản 1", "Đỗ Ngọc Quang", (long)120000, (long)1000,"h4.jpg", "vatly"));
		   ds.add(new sachbean("s51", "Vật lý nâng cao", "Đỗ Ngọc Quang", (long)120000, (long)1000,"h5.jpg", "vatly"));
		   return ds;
	   }
}
