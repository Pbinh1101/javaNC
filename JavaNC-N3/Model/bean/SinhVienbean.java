package bean;

public class SinhVienbean {
	private String MaSV;
	private String Hoten;
	private String Diachi;
	private double dtb;
	private String Malop;

	public SinhVienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SinhVienbean(String maSV, String hoten, String diachi, double dtb, String malop) {
		super();
		MaSV = maSV;
		Hoten = hoten;
		Diachi = diachi;
		this.dtb = dtb;
		Malop = malop;
	}
	public String getMaSV() {
		return MaSV;
	}
	public void setMaSV(String maSV) {
		MaSV = maSV;
	}
	public String getHoten() {
		return Hoten;
	}
	public void setHoten(String hoten) {
		Hoten = hoten;
	}
	public String getDiachi() {
		return Diachi;
	}
	public void setDiachi(String diachi) {
		Diachi = diachi;
	}
	public double getDtb() {
		return dtb;
	}
	public void setDtb(double dtb) {
		this.dtb = dtb;
	}
	public String getMalop() {
		return Malop;
	}
	public void setMalop(String malop) {
		Malop = malop;
	}

	
}