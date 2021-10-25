package bo;

import java.util.ArrayList;
import java.util.Iterator;

import bean.KhachHangbean;
import dao.KhachHangdao;

public class KhachHangbo {
      KhachHangdao khdao = new KhachHangdao();
      public ArrayList<KhachHangbean> getkhachhang(){
    	  return khdao.getkhachhang();
      }
      public KhachHangbean Kiemtrakh(String makh, String maukhau){
    	  ArrayList<KhachHangbean> ds = khdao.getkhachhang();
    	  for(KhachHangbean s: ds) {
    		  if(s.getMakhachhang().equals(makh) && s.getMatkhau().equals(maukhau)) {
    			  return s;
    		  }
			
    	  }
    	  return null;
      }
}
