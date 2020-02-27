package Model;

import java.util.ArrayList;

public class PhoneModel {

	public void addPhone(String f,String l, String Phone) {
		
		InsertRecords ir = new InsertRecords();
		ir.insert(f, l, Phone);
			
	}
	
	public void getPhone() {
		
		SelectRecords sr = new SelectRecords();
		sr.selectAll();
	}
	
	public String check() {
		return "Hello" + " How Are You?";
		
	}
	
	
	public static void main(String []args) {
		
		PhoneModel pm = new PhoneModel();
		pm.getPhone();
	}
}
