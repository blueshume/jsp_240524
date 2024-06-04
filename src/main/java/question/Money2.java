package question;

public class Money2 {

	private int num;
	
	public String process(int a){
		int oman=a/50000;
		int man=a%50000/10000;
		int cheon=a%50000%10000/1000;
		int hund=a%50000%10000%1000/100;
		int ten=a%50000%10000%1000%100/10;
		int one=a%50000%10000%1000%100%10;
		
		return "50000원짜리"+oman+"개<br>"+"10000원짜리"+man+"개<br>"+
			   "1000원짜리"+cheon+"개<br>"+"100원짜리"+hund+"개<br>"+
			   "10원짜리"+ten+"개<br>"+"1원짜리"+one+"개<br>"
		;
		}
	
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
