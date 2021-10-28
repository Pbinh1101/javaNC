package bo;

import java.util.ArrayList;

import bean.khoabean;
import dao.khoadao;

public class khoabo {
	khoadao kdao = new khoadao();
	public ArrayList<khoabean> getkhoa(){
		return kdao.getkhoa();
 }
}
