package question;

public class Asterisk {

	int num;
	
	public int getNumber() {
		return num;
	}

	public void setNumber(int number) {
		this.num = number;
	}

	
	//-------------------- 나  
	public String process() {
	String reuslt = "";
	
	for (int i = 0; i < num; i++) {
		for (int j = 0; j < num -i; j++) {
			reuslt += "*";
		}reuslt += "<br>";
		}
	return reuslt;	
	}
	
	
	//-------------------- 선생님 
//	public String process() {
//		StringBuffer strbuf = new StringBuffer();
//		
//		for (int i = number; i > 0; i--) {
//			for (int j = 0; j < i; j++) {
//				strbuf.append('*');
//			}
//			strbuf.append("<br>");
//		}
//		return strbuf.toString();
//	}
}

