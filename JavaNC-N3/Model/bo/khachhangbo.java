
package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
      khachhangdao khdao = new khachhangdao();
      public ArrayList<khachhangbean> getkh(){
    	  return khdao.getkh();
      }
      public khachhangbean ktdn(String makh, String mk){
    	  ArrayList<khachhangbean> ds = khdao.getkh();
    	  for(khachhangbean x: ds) {
    		  if(x.getMakhachhang().equals(makh) && x.getMatkhau().equals(mk)) {
    			  return x;
    		  }			
    	  }
    	  return null;
      }
}