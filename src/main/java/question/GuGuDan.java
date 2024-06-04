package question;

public class GuGuDan {
private int mul;
	public String process(int num) {
		String result="";
		for (int i =1; i < 10; i++) {
			mul =num*i;
			result += num + " * " + i + " = " + mul + "<br>";
		}
		
		
		return result;
		
	}
}


