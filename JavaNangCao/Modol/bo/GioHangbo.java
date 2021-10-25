package bo;

import java.util.ArrayList;

import bean.GioHangbean;

public class GioHangbo {
	public ArrayList<GioHangbean> ds = new ArrayList<GioHangbean>();
	
	public void Them(String masach, String tensach, String tacgia, Long gia, Long slmua) {
	    	for(GioHangbean g: ds)
	    		if(g.getMasach().equals(masach)) {
	    			g.setSlmua(g.getSlmua()+slmua);
	    			return;
	    		}
	    	ds.add(new GioHangbean(masach, tensach, tacgia, gia, slmua));
	    }

	public void Xoa(String masach) {
	    	for(GioHangbean g: ds)
	    		if(g.getMasach().equals(masach)) {
	    			ds.remove(g);
	    			return;
	    		}
	    }
	public ArrayList<GioHangbean> XoaAll(){
		ds.removeAll(ds);
		return ds;
	}
	public void Capnhat(String masach,Long slmuamoi) {
		for(GioHangbean g: ds)
    		if(g.getMasach().equals(masach)) {
    		   g.setSlmua(slmuamoi);
    		}
	}
	 
	 public Long Tongtien() {
	    	long s=0;
	    	for(GioHangbean g: ds)
	    		s=s+g.getThanhtien();
	    	return s;
	    }
}
