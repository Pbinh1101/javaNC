package bo;

import java.util.ArrayList;

import bean.SinhVienbean;
import dao.SinhViendao;
public class SinhVienbo {
	SinhViendao svdao= new SinhViendao();
	 public ArrayList<SinhVienbean> getsv(){
		 return svdao.getsv();
	 }
	 public ArrayList<SinhVienbean> htKhoa(String khoa){
		 ArrayList<SinhVienbean> ds = svdao.getsv();
		 ArrayList<SinhVienbean> ds2 = new ArrayList<SinhVienbean>();
		 
		 for (SinhVienbean sv : ds) {
			 if(sv.getMalop().equals(khoa)) {
				 ds2.add(sv);
			 }
		}
		 return ds2;
	 }
	
	 public ArrayList<SinhVienbean> timKiem(String key){
		 ArrayList<SinhVienbean> ds = svdao.getsv();
		 ArrayList<SinhVienbean> ds2 = new ArrayList<SinhVienbean>();
		 for (SinhVienbean sv : ds) {
			if(sv.getHoten().toLowerCase().trim().contains(key.toLowerCase().trim()) || 
					sv.getDiachi().toLowerCase().trim().contains(key.toLowerCase().trim()) ) {
				ds2.add(sv);
			}
		}
		 return ds2;
	 }
	
}
//hàm equals() so sánh mã lớp của sinh viên với "khoa" muốn hiển thị
//hàm toLowerCase() chuyển string về chữ thường, hàm trim() xóa khoảng trắng, hàm contains() tìm kiếm có trả về true thì add vào ds2
