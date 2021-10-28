package bo;

import java.util.ArrayList;

import bean.SinhVienbean;
import dao.SinhViendao;

public class SinhVienbo {
	private static final boolean SinhVienbean = false;
	SinhViendao svdao= new SinhViendao();
	 public ArrayList<SinhVienbean> getsv(){
		 return svdao.getsv();
		 
	 }
	 public ArrayList<SinhVienbean> htsvkhoa(String makhoa){
			ArrayList<SinhVienbean> list = new ArrayList<SinhVienbean>();
			for(SinhVienbean svb: svdao.getsv()) {
				if(svb.getMalop().equalsIgnoreCase(makhoa) == true) {
					list.add(svb);
				}
			}
			return list;
			
		}
	 
	 public ArrayList<SinhVienbean> tk(String kv){
			ArrayList<SinhVienbean> list = new ArrayList<SinhVienbean>();
			for(SinhVienbean svb : svdao.getsv()){
				String temp = svb.toString();
				if(svb.getHoten().toLowerCase().trim().contains(kv.toLowerCase().trim())||
						   svb.getDiachi().toLowerCase().trim().contains(kv.toLowerCase().trim())) {
					list.add(svb);
				}
			}
			
			return list;
	}
} 